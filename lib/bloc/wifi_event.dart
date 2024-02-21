part of 'wifi_bloc.dart';

abstract class WifiEvent extends Equatable {
  const WifiEvent();
  @override
  List<Object> get props => [];
}

class GetWifiName extends WifiEvent {}
