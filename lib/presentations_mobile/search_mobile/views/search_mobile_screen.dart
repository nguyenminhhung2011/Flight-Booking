import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/search_enum.dart';
import 'package:flight_booking/core/components/widgets/extension/color_extension.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/sort_button.dart';
import 'package:flight_booking/presentations_mobile/search_mobile/bloc/search_mobile_bloc.dart';
import 'package:flight_booking/presentations_mobile/search_mobile/bloc/search_mobile_model_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/button_custom.dart';
import '../../../core/components/widgets/mobile/flight_custom.dart';
import '../../../core/components/widgets/mobile/item_view_custom.dart';
import '../../../core/constant/constant.dart';
import '../../../generated/l10n.dart';
import '../../routes_mobile.dart';
import 'bottom_filter.dart';

class SeearchMobileScreen extends StatefulWidget {
  const SeearchMobileScreen({super.key});

  @override
  State<SeearchMobileScreen> createState() => _SeearchMobileScreenState();
}

class _SeearchMobileScreenState extends State<SeearchMobileScreen> {
  final TextEditingController _searchController = TextEditingController();
  SearchMobileBloc get _bloc => BlocProvider.of<SearchMobileBloc>(context);

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _bloc.add(const SearchMobileEvent.onStarted());
  }

  void onTextChange(String text) {
    _bloc.add(SearchMobileEvent.textChange(text: text));
  }

  void onClearText() {
    _searchController.clear();
    _bloc.add(const SearchMobileEvent.textChange(text: ''));
  }

  void onChangeTypeView() {
    _bloc.add(const SearchMobileEvent.changeTypeView());
  }

  void _listenStateChange(BuildContext context, SearchMobileState state) {
    state.maybeWhen(orElse: () {});
  }

  Future _onShowFilter() async {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(15.0),
      )),
      builder: (context) {
        return BottomFilterView(searchType: searchType);
      },
    );
  }

  SearchEnum get searchType => _bloc.getSearchType;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchMobileBloc, SearchMobileState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final data = state.data;
        return CustomTemplateScreenStackScroll(
          floatingButton: ButtonCustom(
            radius: 10.0,
            width: 100.0,
            onPress: _onShowFilter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    S.of(context).filter,
                    style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.filter_list_rounded),
              ],
            ),
          ),
          appbar: AppbarCustom(
            paddingBottom: 10.0,
            paddingTop: 10.0,
            backgroundColor: Theme.of(context).primaryColor,
            title: [
              if (context.canPop)
                IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(Icons.arrow_back),
                ),
              _searchField(context, data),
            ],
          ),
          children: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SortButton(
                      title: data.isGridView
                          ? S.of(context).gridView
                          : S.of(context).listView,
                      icon: Icons.view_agenda,
                      onPress: onChangeTypeView,
                    ),
                  ],
                ),
              ),
            ),
            searchType.isAirportSearch
                ? ImageViewField(
                    imageViewType: data.isGridView
                        ? ImageViewItemType.gridView
                        : ImageViewItemType.verticalView,
                    isOuttext: true,
                    spacingItem: 10.0,
                    widthItem: double.infinity,
                    heighItem: double.infinity,
                    isSliver: true,
                    imageViews: [
                      for (int i = 0; i < 10; i++)
                        ImageViewStyle(
                          isShowFavorite: false,
                          firstText: 'VietName air',
                          secondText:
                              'Voi chuyen bay nay chung toi co the dua ban den bat cu noi nao ',
                          rating: 3.0,
                        )
                    ],
                  )
                : FlightField(
                    type: data.isGridView
                        ? FlightType.gridFlight
                        : FlightType.listFlight,
                    isSliver: true,
                    items: [
                      for (int i = 0; i < 5; i++)
                        FlightStyle(
                          timeStart: DateTime.now(),
                          timeFinish: DateTime.now()
                              .add(const Duration(hours: 4, minutes: 50)),
                          startPlace: 'Comilia',
                          comePlace: 'Sylhet',
                          price: (i + 1) * 100,
                          onPress: () => context.openListPageWithRoute(
                              RoutesMobile.flightDetailMobile),
                        )
                    ],
                  ),
          ],
        );
      },
    );
  }

  Expanded _searchField(BuildContext context, SearchMobileModelState data) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Container(
          height: 45.0,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextFormField(
            controller: _searchController,
            onChanged: onTextChange,
            decoration: InputDecoration(
              filled: true,
              hintText: S.of(context).searchAnything,
              hintStyle: context.titleSmall.copyWith(color: Colors.grey),
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              suffix: data.textSearch.isNotEmpty
                  ? IconButton(
                      onPressed: onClearText,
                      icon: Icon(
                        Icons.close,
                        size: 12.0,
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .fontColorByBackground,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}
