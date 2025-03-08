// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SongChart _$SongChartFromJson(Map<String, dynamic> json) {
  return _SongChart.fromJson(json);
}

/// @nodoc
mixin _$SongChart {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get week => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  List<SongElement> get songs => throw _privateConstructorUsedError;

  /// Serializes this SongChart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SongChart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongChartCopyWith<SongChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongChartCopyWith<$Res> {
  factory $SongChartCopyWith(SongChart value, $Res Function(SongChart) then) =
      _$SongChartCopyWithImpl<$Res, SongChart>;
  @useResult
  $Res call({int id, String name, int week, int year, List<SongElement> songs});
}

/// @nodoc
class _$SongChartCopyWithImpl<$Res, $Val extends SongChart>
    implements $SongChartCopyWith<$Res> {
  _$SongChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongChart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? week = null,
    Object? year = null,
    Object? songs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongChartImplCopyWith<$Res>
    implements $SongChartCopyWith<$Res> {
  factory _$$SongChartImplCopyWith(
          _$SongChartImpl value, $Res Function(_$SongChartImpl) then) =
      __$$SongChartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int week, int year, List<SongElement> songs});
}

/// @nodoc
class __$$SongChartImplCopyWithImpl<$Res>
    extends _$SongChartCopyWithImpl<$Res, _$SongChartImpl>
    implements _$$SongChartImplCopyWith<$Res> {
  __$$SongChartImplCopyWithImpl(
      _$SongChartImpl _value, $Res Function(_$SongChartImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongChart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? week = null,
    Object? year = null,
    Object? songs = null,
  }) {
    return _then(_$SongChartImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongChartImpl implements _SongChart {
  const _$SongChartImpl(
      {required this.id,
      required this.name,
      required this.week,
      required this.year,
      required final List<SongElement> songs})
      : _songs = songs;

  factory _$SongChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongChartImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int week;
  @override
  final int year;
  final List<SongElement> _songs;
  @override
  List<SongElement> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString() {
    return 'SongChart(id: $id, name: $name, week: $week, year: $year, songs: $songs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongChartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, week, year,
      const DeepCollectionEquality().hash(_songs));

  /// Create a copy of SongChart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongChartImplCopyWith<_$SongChartImpl> get copyWith =>
      __$$SongChartImplCopyWithImpl<_$SongChartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongChartImplToJson(
      this,
    );
  }
}

abstract class _SongChart implements SongChart {
  const factory _SongChart(
      {required final int id,
      required final String name,
      required final int week,
      required final int year,
      required final List<SongElement> songs}) = _$SongChartImpl;

  factory _SongChart.fromJson(Map<String, dynamic> json) =
      _$SongChartImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get week;
  @override
  int get year;
  @override
  List<SongElement> get songs;

  /// Create a copy of SongChart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongChartImplCopyWith<_$SongChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SongElement _$SongElementFromJson(Map<String, dynamic> json) {
  return _SongElement.fromJson(json);
}

/// @nodoc
mixin _$SongElement {
  int get position => throw _privateConstructorUsedError;
  SongSong get song => throw _privateConstructorUsedError;

  /// Serializes this SongElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SongElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongElementCopyWith<SongElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongElementCopyWith<$Res> {
  factory $SongElementCopyWith(
          SongElement value, $Res Function(SongElement) then) =
      _$SongElementCopyWithImpl<$Res, SongElement>;
  @useResult
  $Res call({int position, SongSong song});

  $SongSongCopyWith<$Res> get song;
}

/// @nodoc
class _$SongElementCopyWithImpl<$Res, $Val extends SongElement>
    implements $SongElementCopyWith<$Res> {
  _$SongElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? song = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as SongSong,
    ) as $Val);
  }

  /// Create a copy of SongElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongSongCopyWith<$Res> get song {
    return $SongSongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SongElementImplCopyWith<$Res>
    implements $SongElementCopyWith<$Res> {
  factory _$$SongElementImplCopyWith(
          _$SongElementImpl value, $Res Function(_$SongElementImpl) then) =
      __$$SongElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int position, SongSong song});

  @override
  $SongSongCopyWith<$Res> get song;
}

/// @nodoc
class __$$SongElementImplCopyWithImpl<$Res>
    extends _$SongElementCopyWithImpl<$Res, _$SongElementImpl>
    implements _$$SongElementImplCopyWith<$Res> {
  __$$SongElementImplCopyWithImpl(
      _$SongElementImpl _value, $Res Function(_$SongElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? song = null,
  }) {
    return _then(_$SongElementImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as SongSong,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongElementImpl implements _SongElement {
  const _$SongElementImpl({required this.position, required this.song});

  factory _$SongElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongElementImplFromJson(json);

  @override
  final int position;
  @override
  final SongSong song;

  @override
  String toString() {
    return 'SongElement(position: $position, song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongElementImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.song, song) || other.song == song));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, position, song);

  /// Create a copy of SongElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongElementImplCopyWith<_$SongElementImpl> get copyWith =>
      __$$SongElementImplCopyWithImpl<_$SongElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongElementImplToJson(
      this,
    );
  }
}

abstract class _SongElement implements SongElement {
  const factory _SongElement(
      {required final int position,
      required final SongSong song}) = _$SongElementImpl;

  factory _SongElement.fromJson(Map<String, dynamic> json) =
      _$SongElementImpl.fromJson;

  @override
  int get position;
  @override
  SongSong get song;

  /// Create a copy of SongElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongElementImplCopyWith<_$SongElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SongSong _$SongSongFromJson(Map<String, dynamic> json) {
  return _SongSong.fromJson(json);
}

/// @nodoc
mixin _$SongSong {
  int get id => throw _privateConstructorUsedError;
  int get artistId => throw _privateConstructorUsedError;
  String? get artistName => throw _privateConstructorUsedError;
  dynamic get artistProfilePicture => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get spotifyUrl => throw _privateConstructorUsedError;
  String? get appleMusicUrl => throw _privateConstructorUsedError;

  /// Serializes this SongSong to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SongSong
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongSongCopyWith<SongSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongSongCopyWith<$Res> {
  factory $SongSongCopyWith(SongSong value, $Res Function(SongSong) then) =
      _$SongSongCopyWithImpl<$Res, SongSong>;
  @useResult
  $Res call(
      {int id,
      int artistId,
      String? artistName,
      dynamic artistProfilePicture,
      String title,
      String? spotifyUrl,
      String? appleMusicUrl});
}

/// @nodoc
class _$SongSongCopyWithImpl<$Res, $Val extends SongSong>
    implements $SongSongCopyWith<$Res> {
  _$SongSongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongSong
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? artistName = freezed,
    Object? artistProfilePicture = freezed,
    Object? title = null,
    Object? spotifyUrl = freezed,
    Object? appleMusicUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistProfilePicture: freezed == artistProfilePicture
          ? _value.artistProfilePicture
          : artistProfilePicture // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      spotifyUrl: freezed == spotifyUrl
          ? _value.spotifyUrl
          : spotifyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appleMusicUrl: freezed == appleMusicUrl
          ? _value.appleMusicUrl
          : appleMusicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongSongImplCopyWith<$Res>
    implements $SongSongCopyWith<$Res> {
  factory _$$SongSongImplCopyWith(
          _$SongSongImpl value, $Res Function(_$SongSongImpl) then) =
      __$$SongSongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int artistId,
      String? artistName,
      dynamic artistProfilePicture,
      String title,
      String? spotifyUrl,
      String? appleMusicUrl});
}

/// @nodoc
class __$$SongSongImplCopyWithImpl<$Res>
    extends _$SongSongCopyWithImpl<$Res, _$SongSongImpl>
    implements _$$SongSongImplCopyWith<$Res> {
  __$$SongSongImplCopyWithImpl(
      _$SongSongImpl _value, $Res Function(_$SongSongImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongSong
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? artistName = freezed,
    Object? artistProfilePicture = freezed,
    Object? title = null,
    Object? spotifyUrl = freezed,
    Object? appleMusicUrl = freezed,
  }) {
    return _then(_$SongSongImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistProfilePicture: freezed == artistProfilePicture
          ? _value.artistProfilePicture
          : artistProfilePicture // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      spotifyUrl: freezed == spotifyUrl
          ? _value.spotifyUrl
          : spotifyUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appleMusicUrl: freezed == appleMusicUrl
          ? _value.appleMusicUrl
          : appleMusicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongSongImpl implements _SongSong {
  const _$SongSongImpl(
      {required this.id,
      required this.artistId,
      required this.artistName,
      required this.artistProfilePicture,
      required this.title,
      required this.spotifyUrl,
      required this.appleMusicUrl});

  factory _$SongSongImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongSongImplFromJson(json);

  @override
  final int id;
  @override
  final int artistId;
  @override
  final String? artistName;
  @override
  final dynamic artistProfilePicture;
  @override
  final String title;
  @override
  final String? spotifyUrl;
  @override
  final String? appleMusicUrl;

  @override
  String toString() {
    return 'SongSong(id: $id, artistId: $artistId, artistName: $artistName, artistProfilePicture: $artistProfilePicture, title: $title, spotifyUrl: $spotifyUrl, appleMusicUrl: $appleMusicUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongSongImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            const DeepCollectionEquality()
                .equals(other.artistProfilePicture, artistProfilePicture) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.spotifyUrl, spotifyUrl) ||
                other.spotifyUrl == spotifyUrl) &&
            (identical(other.appleMusicUrl, appleMusicUrl) ||
                other.appleMusicUrl == appleMusicUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      artistId,
      artistName,
      const DeepCollectionEquality().hash(artistProfilePicture),
      title,
      spotifyUrl,
      appleMusicUrl);

  /// Create a copy of SongSong
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongSongImplCopyWith<_$SongSongImpl> get copyWith =>
      __$$SongSongImplCopyWithImpl<_$SongSongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongSongImplToJson(
      this,
    );
  }
}

abstract class _SongSong implements SongSong {
  const factory _SongSong(
      {required final int id,
      required final int artistId,
      required final String? artistName,
      required final dynamic artistProfilePicture,
      required final String title,
      required final String? spotifyUrl,
      required final String? appleMusicUrl}) = _$SongSongImpl;

  factory _SongSong.fromJson(Map<String, dynamic> json) =
      _$SongSongImpl.fromJson;

  @override
  int get id;
  @override
  int get artistId;
  @override
  String? get artistName;
  @override
  dynamic get artistProfilePicture;
  @override
  String get title;
  @override
  String? get spotifyUrl;
  @override
  String? get appleMusicUrl;

  /// Create a copy of SongSong
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongSongImplCopyWith<_$SongSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
