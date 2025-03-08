// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_chart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongChartImpl _$$SongChartImplFromJson(Map<String, dynamic> json) =>
    _$SongChartImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      week: (json['week'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      songs: (json['songs'] as List<dynamic>?)
              ?.map((e) => SongElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
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
      position: (json['position'] as num?)?.toInt(),
      song: json['song'] == null
          ? null
          : SongSong.fromJson(json['song'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SongElementImplToJson(_$SongElementImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'song': instance.song,
    };

_$SongSongImpl _$$SongSongImplFromJson(Map<String, dynamic> json) =>
    _$SongSongImpl(
      id: (json['id'] as num?)?.toInt(),
      artistId: (json['artist_id'] as num?)?.toInt(),
      artistName: json['artist_name'] as String?,
      artistProfilePicture: json['artist_profile_picture'] as String?,
      title: json['title'] as String?,
      spotifyUrl: json['spotify_url'] as String?,
      appleMusicUrl: json['apple_music_url'] as String?,
    );

Map<String, dynamic> _$$SongSongImplToJson(_$SongSongImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artist_id': instance.artistId,
      'artist_name': instance.artistName,
      'artist_profile_picture': instance.artistProfilePicture,
      'title': instance.title,
      'spotify_url': instance.spotifyUrl,
      'apple_music_url': instance.appleMusicUrl,
    };
