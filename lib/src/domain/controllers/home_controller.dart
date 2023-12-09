import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/home_api.dart';
import '../../data/home/home_response_data.dart';
import '../../data/home/home_state.dart';
import '../../utils/logger.dart';

class HomeController extends StateNotifier<HomeState> {
  HomeController(this._api) : super(const HomeState());

  final HomeApi _api;

  void setLoading(bool isLoading) =>
      state = state.copyWith(isLoading: isLoading);

  void setError(bool isError) => state = state.copyWith(isError: isError);

  void setData(HomeResponseData data) => state = state.copyWith(data: data);

  Future<void> onRetry() {
    setError(false);
    return loadData();
  }

  Future<void> loadData() async {
    try {
      setLoading(true);
      final data = await _api.load();
      setData(data);
      setLoading(false);
    } on Object catch (e, s) {
      logger.e('Error: $e\n$s');
      setLoading(false);
      setError(true);
    }
  }
}
