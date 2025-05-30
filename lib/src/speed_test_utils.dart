import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> isInternetAvailable() async {
  final connectivity = Connectivity();
  final connectivityResult = await connectivity.checkConnectivity();
  return !connectivityResult.contains(ConnectivityResult.none);
}
