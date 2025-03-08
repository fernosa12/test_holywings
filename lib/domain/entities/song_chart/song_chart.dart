import 'package:freezed_annotation/freezed_annotation.dart';


part 'song_chart.freezed.dart';
part 'song_chart.g.dart';

@freezed
class SongChart with _$SongChart {
    const factory SongChart({
        required int id,
        required String name,
        required int week,
        required int year,
        required List<SongElement> songs,
    }) = _SongChart;

    factory SongChart.fromJson(Map<String, dynamic> json) => _$SongChartFromJson(json);
}

@freezed
class SongElement with _$SongElement {
    const factory SongElement({
        required int position,
        required SongSong song,
    }) = _SongElement;

    factory SongElement.fromJson(Map<String, dynamic> json) => _$SongElementFromJson(json);
}

@freezed
class SongSong with _$SongSong {
    const factory SongSong({
        required int id,
        required int artistId,
        required String? artistName,
        required dynamic artistProfilePicture,
        required String title,
        required String? spotifyUrl,
        required String? appleMusicUrl,
    }) = _SongSong;

    factory SongSong.fromJson(Map<String, dynamic> json) => _$SongSongFromJson(json);
}
