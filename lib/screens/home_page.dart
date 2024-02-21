import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:show_wifi_name/bloc/wifi_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WifiBloc bloc = WifiBloc();

  @override
  void initState() {
    bloc.add(GetWifiName());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WiFi Info'),
      ),
      body: Center(
        child: BlocBuilder<WifiBloc, WifiState>(
          bloc: bloc,
          builder: (context, state) {
            if (state is WifiInitial) {
              return const CircularProgressIndicator();
            } else if (state is WifiLoaded) {
              return Text('Connected WiFi: ${state.wifiName}');
            } else if (state is WifiError) {
              return Text('Error: ${state.message}');
            } else {
              return const Text('Unknown state');
            }
          },
        ),
      ),
    );
  }
}
