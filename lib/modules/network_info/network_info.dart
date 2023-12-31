import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NetworkInfo {
  final connect = Connectivity();
  late Stream<ConnectivityResult> streamConnect;

  NetworkInfo() {
    init();
  }
  void init() {
    streamConnect = connect.onConnectivityChanged;
  }

  Future<bool> get isConnected async {
    final result = await connect.checkConnectivity();
    return result != ConnectivityResult.none;
  }

  Future<ConnectivityResult> getCurrentStatus() async {
    final result = await connect.checkConnectivity();
    return result;
  }
}
