// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_chart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongChartImpl _$$SongChartImplFromJson(Map<String, dynamic> json) =>
    _$SongChartImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      week: (json['week'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      songs: (json['songs'] as List<dynamic>)
          .map((e) => SongElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SongChartImplToJson(_$SongChartImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'week': instance.week,
      'year': instance.year,
      'songs': instance.songs,
    };

_$SongElementImpl _$$SongElementImplFromJson(Map<String, dynamic> json) =>
    _$SongElementImpl(
      position: (json['position'] as num).toInt(),
      song: SongSong.fromJson(json['song'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SongElementImplToJson(_$SongElementImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'song': instance.song,
    };

_$SongSongImpl _$$SongSongImplFromJson(Map<String, dynamic> json) =>
    _$SongSongImpl(
      id: (json['id'] as num).toInt(),
      artistId: (json['artistId'] as num).toInt(),
      artistName: json['artistName'] as String?,
      artistProfilePicture: json['artistProfilePicture'],
      title: json['title'] as String,
      spotifyUrl: json['spotifyUrl'] as String?,
      appleMusicUrl: json['appleMusicUrl'] as String?,
    );

Map<String, dynamic> _$$SongSongImplToJson(_$SongSongImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artistId': instance.artistId,
      'artistName': instance.artistName,
      'artistProfilePicture': instance.artistProfilePicture,
      'title': instance.title,
      'spotifyUrl': instance.spotifyUrl,
      'appleMusicUrl': instance.appleMusicUrl,
    };
