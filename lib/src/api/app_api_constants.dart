abstract class AppApiConstants {
  const AppApiConstants._();

  static const _baseUrl = 'http://84.201.167.92:10000';
  static const _gptBaseUrl = 'http://51.120.246.63:8000';
  static const login = '$_baseUrl/login';
  static const confirm = '$_baseUrl/confirm';
  static const home = '$_baseUrl/home';
  static const question = '$_baseUrl/question';
  static const answer = '$_baseUrl/answer';
  static const profile = '$_baseUrl/profile';
  static const voiceChat = '$_baseUrl/test/audio';
  static const voiceChatSecondary = '$_gptBaseUrl/call/';
}
