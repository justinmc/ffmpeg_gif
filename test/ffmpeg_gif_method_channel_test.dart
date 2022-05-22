import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ffmpeg_gif/ffmpeg_gif_method_channel.dart';

void main() {
  MethodChannelFfmpegGif platform = MethodChannelFfmpegGif();
  const MethodChannel channel = MethodChannel('ffmpeg_gif');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
