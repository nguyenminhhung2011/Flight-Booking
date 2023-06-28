// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:visafe_driver/core/resource.dart';
// import 'package:visafe_driver/ui/base/base_widget.dart';
// import 'package:visafe_driver/ui/widgets/pagination/pagination_viewmodel.dart';

// typedef SyncData<DataType> = Future<Resource<List<DataType>>> Function(
//     int limit, int offset);
// typedef ItemBuilder<DataType> = Widget Function(
//     BuildContext context, DataType element, int index);
// typedef ReplaceWhere<DataType> = void Function(
//     DataType element, bool Function(DataType element) test);
// typedef InsertItem<DataType> = void Function(int index, DataType element);

// class PaginationListView<DataType> extends StatefulWidget {
//   final SyncData<DataType> syncData;
//   final ItemBuilder<DataType> itemBuilder;
//   final int limit;
//   final bool refreshDisabled;
//   final bool reverse;
//   final EdgeInsets? padding;
//   final String errorMessage;
//   final Widget? nullWidget;

//   const PaginationListView({
//     Key? key,
//     required this.syncData,
//     required this.itemBuilder,
//     this.errorMessage = 'Chưa có dữ liệu!',
//     this.nullWidget,
//     this.limit = 10,
//     this.refreshDisabled = false,
//     this.reverse = false,
//     this.padding,
//   }) : super(key: key);

//   @override
//   State<PaginationListView<DataType>> createState() =>
//       PaginationListViewState<DataType>();
// }

// class PaginationListViewState<DataType>
//     extends State<PaginationListView<DataType>> {
//   final _scrollController = ScrollController();
//   late PaginationViewModel<DataType> _viewModel;

//   @override
//   void initState() {
//     _scrollController.addListener(() {
//       final position = _scrollController.position;
//       final pixels = position.pixels;
//       final maxScrollExtent = position.maxScrollExtent;
//       if (pixels == maxScrollExtent) {
//         _viewModel.loadData();
//       }
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BaseWidget<PaginationViewModel<DataType>>(
//       viewModel: PaginationViewModel<DataType>(),
//       onViewModelReady: (viewModel) => _viewModel = viewModel
//         ..setLimit(widget.limit)
//         ..setSyncData(widget.syncData)
//         ..loadData(),
//       builder: (context, viewModel, child) => widget.refreshDisabled
//           ? _buildBody()
//           : RefreshIndicator(
//               onRefresh: () async {
//                 final loading = viewModel.loadingSubject.valueOrNull ?? false;
//                 if (!loading) _viewModel.refreshData();
//               },
//               child: _buildBody(),
//             ),
//     );
//   }

//   Widget _buildBody() {
//     return StreamBuilder<bool?>(
//       stream: _viewModel.loadingSubject,
//       builder: (context, snapshot) {
//         final loading = snapshot.data ?? false;
//         return StreamBuilder<List<DataType>?>(
//           stream: _viewModel.dataSourceSubject,
//           builder: (context, snapshot) {
//             final dataSource = snapshot.data ?? [];
//             return loading && dataSource.isEmpty
//                 ? const Center(
//                     child: CircularProgressIndicator(strokeWidth: 2.5))
//                 : Stack(
//                     children: <Widget>[
//                       _buildListView(dataSource),
//                       if (dataSource.isEmpty) _buildNull()
//                     ],
//                   );
//           },
//         );
//       },
//     );
//   }

//   Widget _buildNull() {
//     return widget.nullWidget ??
//         Center(
//           child: Text(
//             widget.errorMessage,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Color(0xff8F8F8F),
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         );
//   }

//   Widget _buildListView(List<DataType> dataSource) {
//     const padding = EdgeInsets.symmetric(horizontal: 17, vertical: 10);
//     return StreamBuilder<bool?>(
//       stream: _viewModel.loadingSubject,
//       builder: (context, snapshot) {
//         final loading = snapshot.data ?? false;
//         return ListView.builder(
//           padding: widget.padding ?? padding,
//           reverse: widget.reverse,
//           controller: _scrollController,
//           physics: const AlwaysScrollableScrollPhysics(),
//           itemCount: loading ? dataSource.length + 1 : dataSource.length,
//           itemBuilder: (context, index) => loading && index == dataSource.length
//               ? const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 20),
//                   child: Center(
//                     child: CircularProgressIndicator(
//                       strokeWidth: 2.5,
//                     ),
//                   ),
//                 )
//               : dataSource[index] == null
//                   ? Container()
//                   : widget.itemBuilder(context, dataSource[index], index),
//         );
//       },
//     );
//   }

//   Future<void> showAppDialog(String message) async {
//     if (message.isEmpty) return;
//     await showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (context) => AcceptDialog(message: message),
//     );
//   }

//   refreshData() => _viewModel.refreshData();

//   void insertItem(int index, DataType element) =>
//       _viewModel.insertItem(index, element);

//   void replaceWhere(DataType element, bool Function(DataType element) test) =>
//       _viewModel.replaceWhere(element, test);

//   animateTo(double value) {
//     if (_scrollController.hasClients) {
//       _scrollController.animateTo(
//         value,
//         curve: Curves.ease,
//         duration: const Duration(milliseconds: 500),
//       );
//     }
//   }
// }
