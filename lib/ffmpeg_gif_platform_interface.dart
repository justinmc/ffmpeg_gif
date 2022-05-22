import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ffmpeg_gif_method_channel.dart';

abstract class FfmpegGifPlatform extends PlatformInterface {
  /// Constructs a FfmpegGifPlatform.
  FfmpegGifPlatform() : super(token: _token);

  static final Object _token = Object();

  static FfmpegGifPlatform _instance = MethodChannelFfmpegGif();

  /// The default instance of [FfmpegGifPlatform] to use.
  ///
  /// Defaults to [MethodChannelFfmpegGif].
  static FfmpegGifPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FfmpegGifPlatform] when
  /// they register themselves.
  static set instance(FfmpegGifPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
