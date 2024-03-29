import 'dart:ui';

import 'package:bookforest/core/utils/size_util.dart';
import 'package:bookforest/core/configs/firebase/firebase_settings.dart';
import 'package:bookforest/core/configs/flavor/config.dart';
import 'package:bookforest/core/configs/routes/gorouter_provider.dart';
import 'package:bookforest/core/configs/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  String? flavor =
      await const MethodChannel('flavor').invokeMethod<String>('getFlavor');
  Config(flavor);
  debugPrint(flavor);

  KakaoSdk.init(
    nativeAppKey: dotenv.get('kakao_native_app_key'),
  );
  // TODO 안드로이드 디버그 Key Hash 확인용
  debugPrint(await KakaoSdk.origin);

  // Firebase 초기화
  await Firebase.initializeApp(
    options: Config.instance.firebaseOptions,
  );

  // 배포시에만 crashlytics 활성화
  // if (flavor == 'product')
  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  // Crashlytics에 에러 전달
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };

  // 플러터에서 처리되지 않는 네이티브 에러도 확인
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  FcmSettings.initialize();

  runApp(
    const ProviderScope(
      child: BookForest(),
    ),
  );
}

class BookForest extends ConsumerWidget {
  const BookForest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouter);
    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ko', ''),
        Locale('en', ''),
      ],
      title: 'Book Forest',
      theme: AppThemeData.theme,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        initializeDateFormatting(Localizations.localeOf(context).languageCode);
        SizeUtil.getMediaSize(context);
        precacheImage(
          const AssetImage('assets/images/common/background.jpg'),
          context,
        );
        precacheImage(
          const AssetImage('assets/images/common/logo_horizontal.png'),
          context,
        );
        precacheImage(
          const AssetImage('assets/images/common/logo.png'),
          context,
        );

        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: FocusManager.instance.primaryFocus?.unfocus,
              child: child,
            ),
          ),
        );
      },
    );
  }
}
