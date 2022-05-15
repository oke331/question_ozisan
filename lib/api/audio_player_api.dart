import 'package:audioplayers/audioplayers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final audioCacheProvider = Provider(
  (_) => AudioCache(fixedPlayer: AudioPlayer()),
);

final audioPlayerApiProvider = Provider(
  (ref) => AudioPlayerApi._(ref.watch(audioCacheProvider)),
);

class AudioPlayerApi {
  const AudioPlayerApi._(this._audioCache);

  final AudioCache _audioCache;

  Future<void> play({required String fileName}) async {
    await _audioCache.play(fileName);
  }
}
