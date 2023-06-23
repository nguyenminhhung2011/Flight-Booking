import 'package:collection/collection.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flight_booking/app_coordinator.dart';
import 'package:flight_booking/core/components/enum/tic_type_enum.dart';
import 'package:flight_booking/core/components/widgets/extension/context_extension.dart';
import 'package:flight_booking/core/components/widgets/mobile/appbar.dart';
import 'package:flight_booking/core/components/widgets/mobile/custom_template_screen_stack_scroll.dart';
import 'package:flight_booking/core/components/widgets/mobile/header_custom.dart';
import 'package:flight_booking/core/constant/constant.dart';
import 'package:flight_booking/core/constant/handle_time.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/bloc/flight_history_detail_model_state.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/widgets/airport_information_widget.dart';
import 'package:flight_booking/presentations_mobile/flight_history_detail/views/widgets/customer_information_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/mobile/category_custom.dart';
import '../../../core/components/widgets/mobile/flight_custom.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../generated/l10n.dart';
import '../bloc/flight_history_detail_bloc.dart';

const _hMarginCard = 15.0;

class FlightHistoryDetailScreen extends StatefulWidget {
  const FlightHistoryDetailScreen({super.key});

  @override
  State<FlightHistoryDetailScreen> createState() =>
      _FlightHistoryDetailScreenState();
}

class _FlightHistoryDetailScreenState extends State<FlightHistoryDetailScreen> {
  FlightHistoryDetailBloc get _bloc =>
      BlocProvider.of<FlightHistoryDetailBloc>(context);

  @override
  void initState() {
    super.initState();
    _bloc.add(const FlightHistoryDetailEvent.started());
  }

  void _listenStateChange(
      BuildContext context, FlightHistoryDetailState state) {
    state.maybeWhen(orElse: () {});
  }

  void _onCustomerViewChange(int index) {
    _bloc.add(FlightHistoryDetailEvent.changeCustomerView(index: index));
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return BlocConsumer<FlightHistoryDetailBloc, FlightHistoryDetailState>(
      listener: _listenStateChange,
      builder: (context, state) {
        final data = state.data;
        return CustomTemplateScreenStackScroll(
          appbar: AppbarCustom(
            backgroundColor: Theme.of(context).primaryColor,
            title: <Widget>[
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back),
              ),
              const Spacer(),
              Text(
                S.of(context).flightInformation,
                style: context.headerAppBarTextStyle,
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const SizedBox())
            ],
          ),
          children: [
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(_hMarginCard),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Theme.of(context).cardColor,
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor.withOpacity(0.1),
                          blurRadius: 10.0,
                        )
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        _ticField(primaryColor, context),
                        _informationField(context),
                        _paymentField(context),
                      ],
                    ),
                  ),
                  HeaderTextCustom(
                    headerText: '${S.of(context).customerInformation} (3)',
                    padding:
                        const EdgeInsets.symmetric(horizontal: _hMarginCard),
                  ),
                  const SizedBox(height: 10.0),
                  _customerField(context, data),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Container _customerField(
      BuildContext context, FlightHistoryDetailModelState data) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: _hMarginCard),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryField(
            categoryType: CategoryType.textCategory,
            marginLeft: 0.0,
            marginTop: 10.0,
            spacingItem: 15.0,
            categories: [
              S.of(context).personNumber(1),
              S.of(context).personNumber(2),
              S.of(context).personNumber(3)
            ]
                .mapIndexed(
                  (index, e) => CategoryStyle(
                    text: e,
                    isSelected: data.customerViewIndex == index,
                    onPress: () => _onCustomerViewChange(index),
                    textStyle: Theme.of(context).textTheme.titleMedium,
                  ),
                )
                .toList(),
          ),
          CustomerInformationField(
            customer: Customer(
              id: 0,
              name: 'Nguyen Minh Hung',
              phoneNumber: '09435385835',
              email: 'hungnguyen.201102a@gmail.com',
              identifyNum: '3242342384',
              gender: 'Male',
              birthday: DateTime.now(),
            ),
          ),
        ],
      ),
    );
  }

  Container _paymentField(BuildContext context) {
    final titleStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.ellipsis,
    );
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(15.0),
        ),
        color: Theme.of(context).dividerColor,
      ),
      child: Column(
        children: <Map<String, dynamic>>[
          {'header': S.of(context).totalAmount, 'title': '\$200.00'},
          {'header': S.of(context).codePayment, 'title': '23423423489'},
          {
            'header': S.of(context).timePayment,
            'title': '${getjmFormat(DateTime.now())} - ${getYmdFormat(
              DateTime.now(),
            )}'
          }
        ]
            .map(
              (e) => _rowExpandedInformation(
                context,
                titleStyle,
                e['header'],
                e['title'],
              ),
            )
            .expand((element) => [element, const SizedBox(height: 5.0)])
            .toList()
          ..remove,
      ),
    );
  }

  Container _informationField(BuildContext context) {
    final titleStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.ellipsis,
    );
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: Theme.of(context).dividerColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AirportInformationWidget(
            isStartAirport: true,
            place: 'Ho Chi Minh City',
            airportName: 'San bay Tan Son Nhat',
            airportCode: 'SGN',
          ),
          const DividerCustomWithAirplane(),
          const AirportInformationWidget(
            isStartAirport: false,
            place: 'Binh Dinh',
            airportName: 'San bay Phu Cat',
            airportCode: 'UIN',
          ),
          const DividerCustomWithAirplane(),
          InformationColumnItem(
              context: context,
              header: S.of(context).flight,
              title: 'VN7392',
              isStart: true,
              titleStyle: titleStyle),
          const DividerCustomWithAirplane(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InformationColumnItem(
                context: context,
                header: S.of(context).flightType,
                title: 'Flight Direct',
                isStart: true,
                titleStyle: titleStyle,
              ),
              InformationColumnItem(
                context: context,
                header: S.of(context).ticketType,
                title: TicTypeEnum.businessClass.displayValue,
                isStart: false,
                titleStyle: titleStyle,
              ),
            ].expand((element) => [Expanded(child: element)]).toList(),
          ),
          const DividerCustomWithAirplane(),
          _rowExpandedInformation(
              context, titleStyle, S.of(context).minedBy, 'Viet Nam Air'),
        ].expand((element) => [element, const SizedBox(height: 10.0)]).toList()
          ..removeLast(),
      ),
    );
  }

  Row _rowExpandedInformation(
    BuildContext context,
    TextStyle titleStyle,
    String header,
    String title,
  ) {
    return Row(
      children: [
        Text(
          header,
          style: context.titleSmall.copyWith(
            fontWeight: FontWeight.w400,
            color: Theme.of(context).hintColor,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.end,
          style: titleStyle,
        ),
      ].expand((element) => [Expanded(child: element)]).toList(),
    );
  }

  Container _ticField(Color primaryColor, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(15.0),
        ),
        border: Border.all(width: 1.5, color: primaryColor),
        color: primaryColor.withOpacity(0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.connecting_airports_rounded,
                color: primaryColor,
              ),
              const SizedBox(width: 5.0),
              Expanded(
                child: Text(
                  'Viet Nam air',
                  style: context.titleLarge.copyWith(
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const SizedBox(width: 5.0),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Icon(Icons.share, color: primaryColor, size: 16.0),
                ),
              ),
            ],
          ),
          Text(
            '1h 20m',
            style: context.titleSmall.copyWith(color: Colors.grey),
          ),
          TimeFlightRow(
              timeStart: DateTime.now(),
              timeEnd: DateTime.now().add(
                const Duration(hours: 14),
              )),
          Row(
            //🚑Hard code
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ...['Ho Chi Minh', 'Thailand'].map((e) => Text(
                    e,
                    style: context.titleMedium.copyWith(),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InformationColumnItem(
                context: context,
                header: S.of(context).dateStart,
                title: getYmdFormat(
                  DateTime.now(),
                ),
                isStart: true,
                titleStyle: context.titleMedium.copyWith(
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              InformationColumnItem(
                context: context,
                header: S.of(context).dateFinish,
                title: getYmdFormat(
                  DateTime.now().add(
                    const Duration(hours: 14),
                  ),
                ),
                isStart: false,
                titleStyle: context.titleMedium.copyWith(
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ].expand((element) => [Expanded(child: element)]).toList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ClipPath(
              clipper: FlightClipper(),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      S.of(context).bookingCode,
                      style: context.titleSmall,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'LHPMQF',
                          style: context.titleMedium.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.copy,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            'Use this code to check in at airport or check in online',
            style: context.titleSmall,
            textAlign: TextAlign.center,
          )
        ].expand((element) => [element, const SizedBox(height: 10.0)]).toList(),
      ),
    );
  }
}

class TimeFlightRow extends StatelessWidget {
  const TimeFlightRow({
    super.key,
    required this.timeStart,
    required this.timeEnd,
  });

  final DateTime timeStart;
  final DateTime timeEnd;

  @override
  Widget build(BuildContext context) {
    final timeStyle = context.titleLarge
        .copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Text(getjmFormat(timeStart), style: timeStyle),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              const Expanded(child: Divider()),
              Icon(Icons.airplane_ticket,
                  color: Theme.of(context).primaryColor),
              const Expanded(child: Divider()),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            getjmFormat(timeEnd),
            style: timeStyle,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}

class DividerCustomWithAirplane extends StatelessWidget {
  const DividerCustomWithAirplane({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 0.5,
            decoration: DottedDecoration(linePosition: LinePosition.bottom),
          ),
        ),
        const Icon(
          CupertinoIcons.airplane,
          size: 15,
          color: Colors.grey,
        ),
      ],
    );
  }
}
