part of 'wifi_bloc.dart';

abstract class WifiState extends Equatable {
  const WifiState();

  @override
  List<Object> get props => [];
}

class WifiInitial extends WifiState {}

class WifiLoaded extends WifiState {
  final String wifiName;

  const WifiLoaded({required this.wifiName});

  @override
  List<Object> get props => [wifiName];
}

class WifiError extends WifiState {
  final String message;

  const WifiError({required this.message});

  @override
  List<Object> get props => [message];
}
