// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) {
  return _MovieResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieResponse {
  List<MovieModel> get Search => throw _privateConstructorUsedError;
  String get totalResults => throw _privateConstructorUsedError;
  String get Response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResponseCopyWith<MovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResponseCopyWith<$Res> {
  factory $MovieResponseCopyWith(
          MovieResponse value, $Res Function(MovieResponse) then) =
      _$MovieResponseCopyWithImpl<$Res, MovieResponse>;
  @useResult
  $Res call({List<MovieModel> Search, String totalResults, String Response});
}

/// @nodoc
class _$MovieResponseCopyWithImpl<$Res, $Val extends MovieResponse>
    implements $MovieResponseCopyWith<$Res> {
  _$MovieResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Search = null,
    Object? totalResults = null,
    Object? Response = null,
  }) {
    return _then(_value.copyWith(
      Search: null == Search
          ? _value.Search
          : Search // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String,
      Response: null == Response
          ? _value.Response
          : Response // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieResponseImplCopyWith<$Res>
    implements $MovieResponseCopyWith<$Res> {
  factory _$$MovieResponseImplCopyWith(
          _$MovieResponseImpl value, $Res Function(_$MovieResponseImpl) then) =
      __$$MovieResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovieModel> Search, String totalResults, String Response});
}

/// @nodoc
class __$$MovieResponseImplCopyWithImpl<$Res>
    extends _$MovieResponseCopyWithImpl<$Res, _$MovieResponseImpl>
    implements _$$MovieResponseImplCopyWith<$Res> {
  __$$MovieResponseImplCopyWithImpl(
      _$MovieResponseImpl _value, $Res Function(_$MovieResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Search = null,
    Object? totalResults = null,
    Object? Response = null,
  }) {
    return _then(_$MovieResponseImpl(
      Search: null == Search
          ? _value._Search
          : Search // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String,
      Response: null == Response
          ? _value.Response
          : Response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieResponseImpl implements _MovieResponse {
  const _$MovieResponseImpl(
      {required final List<MovieModel> Search,
      required this.totalResults,
      required this.Response})
      : _Search = Search;

  factory _$MovieResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieResponseImplFromJson(json);

  final List<MovieModel> _Search;
  @override
  List<MovieModel> get Search {
    if (_Search is EqualUnmodifiableListView) return _Search;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Search);
  }

  @override
  final String totalResults;
  @override
  final String Response;

  @override
  String toString() {
    return 'MovieResponse(Search: $Search, totalResults: $totalResults, Response: $Response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieResponseImpl &&
            const DeepCollectionEquality().equals(other._Search, _Search) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.Response, Response) ||
                other.Response == Response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_Search), totalResults, Response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieResponseImplCopyWith<_$MovieResponseImpl> get copyWith =>
      __$$MovieResponseImplCopyWithImpl<_$MovieResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieResponseImplToJson(
      this,
    );
  }
}

abstract class _MovieResponse implements MovieResponse {
  const factory _MovieResponse(
      {required final List<MovieModel> Search,
      required final String totalResults,
      required final String Response}) = _$MovieResponseImpl;

  factory _MovieResponse.fromJson(Map<String, dynamic> json) =
      _$MovieResponseImpl.fromJson;

  @override
  List<MovieModel> get Search;
  @override
  String get totalResults;
  @override
  String get Response;
  @override
  @JsonKey(ignore: true)
  _$$MovieResponseImplCopyWith<_$MovieResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  String? get Title => throw _privateConstructorUsedError;
  String? get Year => throw _privateConstructorUsedError;
  String? get Rated => throw _privateConstructorUsedError;
  String? get Released => throw _privateConstructorUsedError;
  String? get Runtime => throw _privateConstructorUsedError;
  String? get Genre => throw _privateConstructorUsedError;
  String? get Director => throw _privateConstructorUsedError;
  String? get Writer => throw _privateConstructorUsedError;
  String? get Actors => throw _privateConstructorUsedError;
  String? get Plot => throw _privateConstructorUsedError;
  String? get Language => throw _privateConstructorUsedError;
  String? get Country => throw _privateConstructorUsedError;
  String? get Awards => throw _privateConstructorUsedError;
  String? get Poster => throw _privateConstructorUsedError;
  List<Rating>? get Ratings => throw _privateConstructorUsedError;
  String? get Metascore => throw _privateConstructorUsedError;
  String? get imdbRating => throw _privateConstructorUsedError;
  String? get imdbVotes => throw _privateConstructorUsedError;
  String? get imdbID => throw _privateConstructorUsedError;
  String? get Type => throw _privateConstructorUsedError;
  String? get DVD => throw _privateConstructorUsedError;
  String? get BoxOffice => throw _privateConstructorUsedError;
  String? get Production => throw _privateConstructorUsedError;
  String? get Website => throw _privateConstructorUsedError;
  String? get Response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {String? Title,
      String? Year,
      String? Rated,
      String? Released,
      String? Runtime,
      String? Genre,
      String? Director,
      String? Writer,
      String? Actors,
      String? Plot,
      String? Language,
      String? Country,
      String? Awards,
      String? Poster,
      List<Rating>? Ratings,
      String? Metascore,
      String? imdbRating,
      String? imdbVotes,
      String? imdbID,
      String? Type,
      String? DVD,
      String? BoxOffice,
      String? Production,
      String? Website,
      String? Response});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Title = freezed,
    Object? Year = freezed,
    Object? Rated = freezed,
    Object? Released = freezed,
    Object? Runtime = freezed,
    Object? Genre = freezed,
    Object? Director = freezed,
    Object? Writer = freezed,
    Object? Actors = freezed,
    Object? Plot = freezed,
    Object? Language = freezed,
    Object? Country = freezed,
    Object? Awards = freezed,
    Object? Poster = freezed,
    Object? Ratings = freezed,
    Object? Metascore = freezed,
    Object? imdbRating = freezed,
    Object? imdbVotes = freezed,
    Object? imdbID = freezed,
    Object? Type = freezed,
    Object? DVD = freezed,
    Object? BoxOffice = freezed,
    Object? Production = freezed,
    Object? Website = freezed,
    Object? Response = freezed,
  }) {
    return _then(_value.copyWith(
      Title: freezed == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Year: freezed == Year
          ? _value.Year
          : Year // ignore: cast_nullable_to_non_nullable
              as String?,
      Rated: freezed == Rated
          ? _value.Rated
          : Rated // ignore: cast_nullable_to_non_nullable
              as String?,
      Released: freezed == Released
          ? _value.Released
          : Released // ignore: cast_nullable_to_non_nullable
              as String?,
      Runtime: freezed == Runtime
          ? _value.Runtime
          : Runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      Genre: freezed == Genre
          ? _value.Genre
          : Genre // ignore: cast_nullable_to_non_nullable
              as String?,
      Director: freezed == Director
          ? _value.Director
          : Director // ignore: cast_nullable_to_non_nullable
              as String?,
      Writer: freezed == Writer
          ? _value.Writer
          : Writer // ignore: cast_nullable_to_non_nullable
              as String?,
      Actors: freezed == Actors
          ? _value.Actors
          : Actors // ignore: cast_nullable_to_non_nullable
              as String?,
      Plot: freezed == Plot
          ? _value.Plot
          : Plot // ignore: cast_nullable_to_non_nullable
              as String?,
      Language: freezed == Language
          ? _value.Language
          : Language // ignore: cast_nullable_to_non_nullable
              as String?,
      Country: freezed == Country
          ? _value.Country
          : Country // ignore: cast_nullable_to_non_nullable
              as String?,
      Awards: freezed == Awards
          ? _value.Awards
          : Awards // ignore: cast_nullable_to_non_nullable
              as String?,
      Poster: freezed == Poster
          ? _value.Poster
          : Poster // ignore: cast_nullable_to_non_nullable
              as String?,
      Ratings: freezed == Ratings
          ? _value.Ratings
          : Ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>?,
      Metascore: freezed == Metascore
          ? _value.Metascore
          : Metascore // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbRating: freezed == imdbRating
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbVotes: freezed == imdbVotes
          ? _value.imdbVotes
          : imdbVotes // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbID: freezed == imdbID
          ? _value.imdbID
          : imdbID // ignore: cast_nullable_to_non_nullable
              as String?,
      Type: freezed == Type
          ? _value.Type
          : Type // ignore: cast_nullable_to_non_nullable
              as String?,
      DVD: freezed == DVD
          ? _value.DVD
          : DVD // ignore: cast_nullable_to_non_nullable
              as String?,
      BoxOffice: freezed == BoxOffice
          ? _value.BoxOffice
          : BoxOffice // ignore: cast_nullable_to_non_nullable
              as String?,
      Production: freezed == Production
          ? _value.Production
          : Production // ignore: cast_nullable_to_non_nullable
              as String?,
      Website: freezed == Website
          ? _value.Website
          : Website // ignore: cast_nullable_to_non_nullable
              as String?,
      Response: freezed == Response
          ? _value.Response
          : Response // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
          _$MovieModelImpl value, $Res Function(_$MovieModelImpl) then) =
      __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? Title,
      String? Year,
      String? Rated,
      String? Released,
      String? Runtime,
      String? Genre,
      String? Director,
      String? Writer,
      String? Actors,
      String? Plot,
      String? Language,
      String? Country,
      String? Awards,
      String? Poster,
      List<Rating>? Ratings,
      String? Metascore,
      String? imdbRating,
      String? imdbVotes,
      String? imdbID,
      String? Type,
      String? DVD,
      String? BoxOffice,
      String? Production,
      String? Website,
      String? Response});
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
      _$MovieModelImpl _value, $Res Function(_$MovieModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Title = freezed,
    Object? Year = freezed,
    Object? Rated = freezed,
    Object? Released = freezed,
    Object? Runtime = freezed,
    Object? Genre = freezed,
    Object? Director = freezed,
    Object? Writer = freezed,
    Object? Actors = freezed,
    Object? Plot = freezed,
    Object? Language = freezed,
    Object? Country = freezed,
    Object? Awards = freezed,
    Object? Poster = freezed,
    Object? Ratings = freezed,
    Object? Metascore = freezed,
    Object? imdbRating = freezed,
    Object? imdbVotes = freezed,
    Object? imdbID = freezed,
    Object? Type = freezed,
    Object? DVD = freezed,
    Object? BoxOffice = freezed,
    Object? Production = freezed,
    Object? Website = freezed,
    Object? Response = freezed,
  }) {
    return _then(_$MovieModelImpl(
      Title: freezed == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Year: freezed == Year
          ? _value.Year
          : Year // ignore: cast_nullable_to_non_nullable
              as String?,
      Rated: freezed == Rated
          ? _value.Rated
          : Rated // ignore: cast_nullable_to_non_nullable
              as String?,
      Released: freezed == Released
          ? _value.Released
          : Released // ignore: cast_nullable_to_non_nullable
              as String?,
      Runtime: freezed == Runtime
          ? _value.Runtime
          : Runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      Genre: freezed == Genre
          ? _value.Genre
          : Genre // ignore: cast_nullable_to_non_nullable
              as String?,
      Director: freezed == Director
          ? _value.Director
          : Director // ignore: cast_nullable_to_non_nullable
              as String?,
      Writer: freezed == Writer
          ? _value.Writer
          : Writer // ignore: cast_nullable_to_non_nullable
              as String?,
      Actors: freezed == Actors
          ? _value.Actors
          : Actors // ignore: cast_nullable_to_non_nullable
              as String?,
      Plot: freezed == Plot
          ? _value.Plot
          : Plot // ignore: cast_nullable_to_non_nullable
              as String?,
      Language: freezed == Language
          ? _value.Language
          : Language // ignore: cast_nullable_to_non_nullable
              as String?,
      Country: freezed == Country
          ? _value.Country
          : Country // ignore: cast_nullable_to_non_nullable
              as String?,
      Awards: freezed == Awards
          ? _value.Awards
          : Awards // ignore: cast_nullable_to_non_nullable
              as String?,
      Poster: freezed == Poster
          ? _value.Poster
          : Poster // ignore: cast_nullable_to_non_nullable
              as String?,
      Ratings: freezed == Ratings
          ? _value._Ratings
          : Ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>?,
      Metascore: freezed == Metascore
          ? _value.Metascore
          : Metascore // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbRating: freezed == imdbRating
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbVotes: freezed == imdbVotes
          ? _value.imdbVotes
          : imdbVotes // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbID: freezed == imdbID
          ? _value.imdbID
          : imdbID // ignore: cast_nullable_to_non_nullable
              as String?,
      Type: freezed == Type
          ? _value.Type
          : Type // ignore: cast_nullable_to_non_nullable
              as String?,
      DVD: freezed == DVD
          ? _value.DVD
          : DVD // ignore: cast_nullable_to_non_nullable
              as String?,
      BoxOffice: freezed == BoxOffice
          ? _value.BoxOffice
          : BoxOffice // ignore: cast_nullable_to_non_nullable
              as String?,
      Production: freezed == Production
          ? _value.Production
          : Production // ignore: cast_nullable_to_non_nullable
              as String?,
      Website: freezed == Website
          ? _value.Website
          : Website // ignore: cast_nullable_to_non_nullable
              as String?,
      Response: freezed == Response
          ? _value.Response
          : Response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl(
      {this.Title,
      this.Year,
      this.Rated,
      this.Released,
      this.Runtime,
      this.Genre,
      this.Director,
      this.Writer,
      this.Actors,
      this.Plot,
      this.Language,
      this.Country,
      this.Awards,
      this.Poster,
      final List<Rating>? Ratings,
      this.Metascore,
      this.imdbRating,
      this.imdbVotes,
      this.imdbID,
      this.Type,
      this.DVD,
      this.BoxOffice,
      this.Production,
      this.Website,
      this.Response})
      : _Ratings = Ratings;

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  final String? Title;
  @override
  final String? Year;
  @override
  final String? Rated;
  @override
  final String? Released;
  @override
  final String? Runtime;
  @override
  final String? Genre;
  @override
  final String? Director;
  @override
  final String? Writer;
  @override
  final String? Actors;
  @override
  final String? Plot;
  @override
  final String? Language;
  @override
  final String? Country;
  @override
  final String? Awards;
  @override
  final String? Poster;
  final List<Rating>? _Ratings;
  @override
  List<Rating>? get Ratings {
    final value = _Ratings;
    if (value == null) return null;
    if (_Ratings is EqualUnmodifiableListView) return _Ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? Metascore;
  @override
  final String? imdbRating;
  @override
  final String? imdbVotes;
  @override
  final String? imdbID;
  @override
  final String? Type;
  @override
  final String? DVD;
  @override
  final String? BoxOffice;
  @override
  final String? Production;
  @override
  final String? Website;
  @override
  final String? Response;

  @override
  String toString() {
    return 'MovieModel(Title: $Title, Year: $Year, Rated: $Rated, Released: $Released, Runtime: $Runtime, Genre: $Genre, Director: $Director, Writer: $Writer, Actors: $Actors, Plot: $Plot, Language: $Language, Country: $Country, Awards: $Awards, Poster: $Poster, Ratings: $Ratings, Metascore: $Metascore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbID: $imdbID, Type: $Type, DVD: $DVD, BoxOffice: $BoxOffice, Production: $Production, Website: $Website, Response: $Response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.Title, Title) || other.Title == Title) &&
            (identical(other.Year, Year) || other.Year == Year) &&
            (identical(other.Rated, Rated) || other.Rated == Rated) &&
            (identical(other.Released, Released) ||
                other.Released == Released) &&
            (identical(other.Runtime, Runtime) || other.Runtime == Runtime) &&
            (identical(other.Genre, Genre) || other.Genre == Genre) &&
            (identical(other.Director, Director) ||
                other.Director == Director) &&
            (identical(other.Writer, Writer) || other.Writer == Writer) &&
            (identical(other.Actors, Actors) || other.Actors == Actors) &&
            (identical(other.Plot, Plot) || other.Plot == Plot) &&
            (identical(other.Language, Language) ||
                other.Language == Language) &&
            (identical(other.Country, Country) || other.Country == Country) &&
            (identical(other.Awards, Awards) || other.Awards == Awards) &&
            (identical(other.Poster, Poster) || other.Poster == Poster) &&
            const DeepCollectionEquality().equals(other._Ratings, _Ratings) &&
            (identical(other.Metascore, Metascore) ||
                other.Metascore == Metascore) &&
            (identical(other.imdbRating, imdbRating) ||
                other.imdbRating == imdbRating) &&
            (identical(other.imdbVotes, imdbVotes) ||
                other.imdbVotes == imdbVotes) &&
            (identical(other.imdbID, imdbID) || other.imdbID == imdbID) &&
            (identical(other.Type, Type) || other.Type == Type) &&
            (identical(other.DVD, DVD) || other.DVD == DVD) &&
            (identical(other.BoxOffice, BoxOffice) ||
                other.BoxOffice == BoxOffice) &&
            (identical(other.Production, Production) ||
                other.Production == Production) &&
            (identical(other.Website, Website) || other.Website == Website) &&
            (identical(other.Response, Response) ||
                other.Response == Response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        Title,
        Year,
        Rated,
        Released,
        Runtime,
        Genre,
        Director,
        Writer,
        Actors,
        Plot,
        Language,
        Country,
        Awards,
        Poster,
        const DeepCollectionEquality().hash(_Ratings),
        Metascore,
        imdbRating,
        imdbVotes,
        imdbID,
        Type,
        DVD,
        BoxOffice,
        Production,
        Website,
        Response
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {final String? Title,
      final String? Year,
      final String? Rated,
      final String? Released,
      final String? Runtime,
      final String? Genre,
      final String? Director,
      final String? Writer,
      final String? Actors,
      final String? Plot,
      final String? Language,
      final String? Country,
      final String? Awards,
      final String? Poster,
      final List<Rating>? Ratings,
      final String? Metascore,
      final String? imdbRating,
      final String? imdbVotes,
      final String? imdbID,
      final String? Type,
      final String? DVD,
      final String? BoxOffice,
      final String? Production,
      final String? Website,
      final String? Response}) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  String? get Title;
  @override
  String? get Year;
  @override
  String? get Rated;
  @override
  String? get Released;
  @override
  String? get Runtime;
  @override
  String? get Genre;
  @override
  String? get Director;
  @override
  String? get Writer;
  @override
  String? get Actors;
  @override
  String? get Plot;
  @override
  String? get Language;
  @override
  String? get Country;
  @override
  String? get Awards;
  @override
  String? get Poster;
  @override
  List<Rating>? get Ratings;
  @override
  String? get Metascore;
  @override
  String? get imdbRating;
  @override
  String? get imdbVotes;
  @override
  String? get imdbID;
  @override
  String? get Type;
  @override
  String? get DVD;
  @override
  String? get BoxOffice;
  @override
  String? get Production;
  @override
  String? get Website;
  @override
  String? get Response;
  @override
  @JsonKey(ignore: true)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  String get Source => throw _privateConstructorUsedError;
  String get Value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call({String Source, String Value});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Source = null,
    Object? Value = null,
  }) {
    return _then(_value.copyWith(
      Source: null == Source
          ? _value.Source
          : Source // ignore: cast_nullable_to_non_nullable
              as String,
      Value: null == Value
          ? _value.Value
          : Value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String Source, String Value});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Source = null,
    Object? Value = null,
  }) {
    return _then(_$RatingImpl(
      Source: null == Source
          ? _value.Source
          : Source // ignore: cast_nullable_to_non_nullable
              as String,
      Value: null == Value
          ? _value.Value
          : Value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  _$RatingImpl({required this.Source, required this.Value});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  final String Source;
  @override
  final String Value;

  @override
  String toString() {
    return 'Rating(Source: $Source, Value: $Value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.Source, Source) || other.Source == Source) &&
            (identical(other.Value, Value) || other.Value == Value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, Source, Value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  factory _Rating({required final String Source, required final String Value}) =
      _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  String get Source;
  @override
  String get Value;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
