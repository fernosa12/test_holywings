// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_chart.freezed.dart';
part 'song_chart.g.dart';

@freezed
class SongChart with _$SongChart {
  const factory SongChart({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "week") int? week,
    @JsonKey(name: "year") int? year,
    @JsonKey(name: "songs") @Default([]) List<SongElement>? songs, 
  }) = _SongChart;

  factory SongChart.fromJson(Map<String, dynamic> json) => _$SongChartFromJson(json);
}

@freezed
class SongElement with _$SongElement {
  const factory SongElement({
    @JsonKey(name: "position") int? position,
    @JsonKey(name: "song") SongSong? song,
  }) = _SongElement;

  factory SongElement.fromJson(Map<String, dynamic> json) => _$SongElementFromJson(json);
}

@freezed
class SongSong with _$SongSong {
  const factory SongSong({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "artist_id") int? artistId,
    @JsonKey(name: "artist_name") String? artistName,
    @JsonKey(name: "artist_profile_picture") String? artistProfilePicture, // ✅ Ganti dari dynamic ke String?
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "spotify_url") String? spotifyUrl,
    @JsonKey(name: "apple_music_url") String? appleMusicUrl,
  }) = _SongSong;

  factory SongSong.fromJson(Map<String, dynamic> json) => _$SongSongFromJson(json);
}
