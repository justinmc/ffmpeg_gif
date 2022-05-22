import 'package:flutter_test/flutter_test.dart';
import 'package:ffmpeg_gif/ffmpeg_gif.dart';
import 'package:ffmpeg_gif/ffmpeg_gif_platform_interface.dart';
import 'package:ffmpeg_gif/ffmpeg_gif_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFfmpegGifPlatform
    with MockPlatformInterfaceMixin
    implements FfmpegGifPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FfmpegGifPlatform initialPlatform = FfmpegGifPlatform.instance;

  test('$MethodChannelFfmpegGif is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFfmpegGif>());
  });

  test('getPlatformVersion', () async {
    FfmpegGif ffmpegGifPlugin = FfmpegGif();
    MockFfmpegGifPlatform fakePlatform = MockFfmpegGifPlatform();
    FfmpegGifPlatform.instance = fakePlatform;

    expect(await ffmpegGifPlugin.getPlatformVersion(), '42');
  });
}
