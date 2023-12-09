import 'package:dio/dio.dart';

import '../data/home/home_response_data.dart';
import 'app_api_constants.dart';

class HomeApi {
  const HomeApi(this._dio);

  final Dio _dio;

  Future<HomeResponseData> load() async {
    final response = await _dio.get(AppApiConstants.home);
    return HomeResponseData.fromJson(response.data);
  }
}
