import 'package:bookforest/common/utils/size_util.dart';
import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class BookForestMap extends StatefulWidget {
  const BookForestMap({super.key});

  @override
  State<BookForestMap> createState() => _BookForestMapState();
}

class _BookForestMapState extends State<BookForestMap> {
  @override
  void initState() {
    AuthRepository.initialize(appKey: 'ba5ff2c0db20a5b10882a7e4eb0ae169');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: expectSize(200),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(expectSize(15)),
        child: const KakaoMap(),
      ),
    );
  }
}
