import 'package:bookforest/core/domain/entities/pagination.dart';
import 'package:bookforest/core/utils/size_util.dart';
import 'package:flutter/material.dart';

typedef PaginationBuilder = Widget? Function(BuildContext context, int index);

// class PaginationGridView<T> extends StatefulWidget {
//   const PaginationGridView({
//     super.key,
//     required this.gridDelegate,
//     required this.itemBuilder,
//     required this.pagination,
//     this.onFetchMore,
//     this.onRefresh,
//   });
//   final PaginationData<T> pagination;
//   final VoidCallback? onRefresh;
//   final VoidCallback? onFetchMore;
//   final SliverGridDelegate gridDelegate;
//   final PaginationBuilder itemBuilder;

//   @override
//   State<PaginationGridView> createState() => _PaginationGridViewState<T>();
// }

// class _PaginationGridViewState<T> extends State<PaginationGridView> {
//   final _controller = ScrollController();

//   @override
//   void initState() {
//     _controller.addListener(() {
//       FocusManager.instance.primaryFocus?.unfocus();
//       if (widget.onFetchMore != null) {
//         if (_controller.offset > _controller.position.maxScrollExtent - 150) {
//           widget.onFetchMore!();
//         }
//       }
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return RefreshIndicator(
//       onRefresh: () async {
//         if (widget.onRefresh != null) {
//           widget.onRefresh!();
//         }
//       },
//       child: GridView.builder(
//         gridDelegate: widget.gridDelegate,
//         controller: _controller,
//         itemBuilder: widget.itemBuilder,
//         itemCount: widget.pagination.content.length,
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

class PaginationSliverGridView<T> extends StatefulWidget {
  const PaginationSliverGridView({
    super.key,
    required this.gridDelegate,
    required this.itemBuilder,
    required this.pagination,
    required this.controller,
    this.onFetchMore,
  });

  final Pagination<T> pagination;
  final SliverGridDelegate gridDelegate;
  final PaginationBuilder itemBuilder;
  final VoidCallback? onFetchMore;
  final ScrollController controller;

  @override
  State<PaginationSliverGridView> createState() =>
      _PaginationSliverGridViewState();
}

class _PaginationSliverGridViewState extends State<PaginationSliverGridView> {
  @override
  void initState() {
    widget.controller.addListener(() {
      FocusManager.instance.primaryFocus?.unfocus();
      if (widget.onFetchMore != null) {
        if (widget.controller.offset >
            widget.controller.position.maxScrollExtent - 150) {
          widget.onFetchMore!();
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return switch (widget.pagination) {
      PaginationData(
        hasMore: bool hasMore,
        content: List content,
      ) =>
        SliverGrid(
          gridDelegate: widget.gridDelegate,
          delegate: SliverChildBuilderDelegate(
            widget.itemBuilder,
            childCount: content.length,
          ),
        ),
      PaginationLoading() => SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              top: 50.size,
            ),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      PaginationError(message: String message) => SliverToBoxAdapter(
          child: Text(message),
        ),
    };
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }
}
