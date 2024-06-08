// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieResponseImpl _$$MovieResponseImplFromJson(Map<String, dynamic> json) =>
    _$MovieResponseImpl(
      Search: (json['Search'] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: json['totalResults'] as String,
      Response: json['Response'] as String,
    );

Map<String, dynamic> _$$MovieResponseImplToJson(_$MovieResponseImpl instance) =>
    <String, dynamic>{
      'Search': instance.Search,
      'totalResults': instance.totalResults,
      'Response': instance.Response,
    };

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      Title: json['Title'] as String?,
      Year: json['Year'] as String?,
      Rated: json['Rated'] as String?,
      Released: json['Released'] as String?,
      Runtime: json['Runtime'] as String?,
      Genre: json['Genre'] as String?,
      Director: json['Director'] as String?,
      Writer: json['Writer'] as String?,
      Actors: json['Actors'] as String?,
      Plot: json['Plot'] as String?,
      Language: json['Language'] as String?,
      Country: json['Country'] as String?,
      Awards: json['Awards'] as String?,
      Poster: json['Poster'] as String?,
      Ratings: (json['Ratings'] as List<dynamic>?)
          ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
      Metascore: json['Metascore'] as String?,
      imdbRating: json['imdbRating'] as String?,
      imdbVotes: json['imdbVotes'] as String?,
      imdbID: json['imdbID'] as String?,
      Type: json['Type'] as String?,
      DVD: json['DVD'] as String?,
      BoxOffice: json['BoxOffice'] as String?,
      Production: json['Production'] as String?,
      Website: json['Website'] as String?,
      Response: json['Response'] as String?,
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'Title': instance.Title,
      'Year': instance.Year,
      'Rated': instance.Rated,
      'Released': instance.Released,
      'Runtime': instance.Runtime,
      'Genre': instance.Genre,
      'Director': instance.Director,
      'Writer': instance.Writer,
      'Actors': instance.Actors,
      'Plot': instance.Plot,
      'Language': instance.Language,
      'Country': instance.Country,
      'Awards': instance.Awards,
      'Poster': instance.Poster,
      'Ratings': instance.Ratings,
      'Metascore': instance.Metascore,
      'imdbRating': instance.imdbRating,
      'imdbVotes': instance.imdbVotes,
      'imdbID': instance.imdbID,
      'Type': instance.Type,
      'DVD': instance.DVD,
      'BoxOffice': instance.BoxOffice,
      'Production': instance.Production,
      'Website': instance.Website,
      'Response': instance.Response,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      Source: json['Source'] as String,
      Value: json['Value'] as String,
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'Source': instance.Source,
      'Value': instance.Value,
    };
