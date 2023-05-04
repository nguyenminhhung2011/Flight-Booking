import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../bloc/airport_bloc.dart';
import 'airport_fast_view.dart';

class AirportScreen extends StatefulWidget {
  const AirportScreen({super.key});

  @override
  State<AirportScreen> createState() => _AirportScreenState();
}

class _AirportScreenState extends State<AirportScreen> {
  late final _textController;

  AirportBloc get _bloc => BlocProvider.of<AirportBloc>(context);

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _bloc.add(const AirportEvent.onStarted());
  }

  void _listenStateChange(BuildContext context, AirportState state) {
    state.whenOrNull();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AirportBloc, AirportState>(
      listener: _listenStateChange,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Row(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const SizedBox(height: 10.0),
                    Text(
                      S.of(context).airport,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                      maxLines: 1,
                    ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
              Breakpoints.large.isActive(context)
                  ? AirportFastView(
                      state: state,
                    )
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
