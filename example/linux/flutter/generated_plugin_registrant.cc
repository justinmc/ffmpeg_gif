//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <ffmpeg_gif/ffmpeg_gif_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) ffmpeg_gif_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FfmpegGifPlugin");
  ffmpeg_gif_plugin_register_with_registrar(ffmpeg_gif_registrar);
}
