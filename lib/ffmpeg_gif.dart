import 'package:flutter/services.dart';

class FfmpegGif {
  static const MethodChannel _channel = MethodChannel('ffmpeg_gif');

  static Future<String?> convertToGif(String path){
    return _channel.invokeMethod('convertToGif', path);
  }
}
