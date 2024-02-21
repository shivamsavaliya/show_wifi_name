import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:network_info_plus/network_info_plus.dart';
part 'wifi_event.dart';
part 'wifi_state.dart';

class WifiBloc extends Bloc<WifiEvent, WifiState> {
  WifiBloc() : super(WifiInitial()) {
    on<WifiEvent>(wifiEvent);
  }
  final NetworkInfo _networkInfo = NetworkInfo();

  FutureOr<void> wifiEvent(WifiEvent event, Emitter<WifiState> emit) async {
    if (event is GetWifiName) {
      try {
        String? wifiName = await _networkInfo.getWifiName();
        emit(WifiLoaded(wifiName: wifiName.toString()));
      } catch (e) {
        emit(WifiError(message: e.toString()));
      }
    }
  }
}
