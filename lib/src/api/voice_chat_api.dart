import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import '../data/voice_chat/voice_chat_request_data.dart';
import '../utils/logger.dart';
import 'app_api_constants.dart';

class VoiceChatApi {
  const VoiceChatApi(this._dio);

  final Dio _dio;

  Future<String> _writeAudioFile(List<int> bytes) async {
    logger.d('_writeAudioFile');

    final temp = await getTemporaryDirectory();
    final fullPath = '${temp.path}/${const Uuid().v4()}.mp3';

    logger.d('Saved file to $fullPath');

    final file = File(fullPath);
    final accessFile = file.openSync(mode: FileMode.write);
    accessFile.writeFromSync(bytes);
    await accessFile.close();
    return fullPath;
  }

  Future<String> sendText(String text) async {
    final response = await _dio.post(
      AppApiConstants.voiceChatSecondary,
      data: VoiceChatRequestData(text: text).toJson(),
      onReceiveProgress: (received, total) => print(
        '${(received / total * 100).toStringAsFixed(0)}%',
      ),
      options: Options(
        responseType: ResponseType.bytes,
        validateStatus: (status) => (status ?? 0) < 500,
      ),
    );
    logger.d('sendText response: ${response.data}');
    return _writeAudioFile(response.data);
  }
}
