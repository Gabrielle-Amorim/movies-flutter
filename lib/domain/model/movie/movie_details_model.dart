import '../../../config.dart';
import '../model.dart';

class MovieDetailsModel {
  MovieDetailsModel({
    required this.adult,
    required this.backdropPath,
    required this.collection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.companies,
    required this.releaseDate,
    required this.runtime,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieDetailsModel.empty() => MovieDetailsModel(
        adult: false,
        backdropPath: '',
        collection: CollectionModel.empty(),
        budget: 0,
        genres: [],
        homepage: '',
        id: '',
        imdbId: '',
        originCountry: [],
        originalLanguage: '',
        originalTitle: '',
        overview: '',
        popularity: '',
        posterPath: '',
        companies: [],
        releaseDate: DateTime.now(),
        runtime: 0,
        status: '',
        tagline: '',
        title: '',
        video: false,
        voteAverage: '',
        voteCount: '',
      );

  factory MovieDetailsModel.fromMap(Map<String, dynamic> map) => MovieDetailsModel(
        adult: map['adult'] ?? false,
        backdropPath: map['backdrop_path'] ?? '',
        collection: CollectionModel.fromMap(map['belongs_to_collection']),
        budget: map['budget'] ?? 0,
        genres: (map['genres'] as List? ?? [])
            .map(
              (e) => GenreModel.fromMap(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        homepage: map['homepage'] ?? '',
        id: (map['id'] ?? '').toString(),
        imdbId: map['imdb_id'] ?? '',
        originCountry: (map['origin_country'] as List<dynamic>? ?? [])
            .map(
              (e) => e as String,
            )
            .toList(),
        originalLanguage: map['original_language'] ?? '',
        originalTitle: map['original_title'] ?? '',
        overview: map['overview'] ?? '',
        popularity: (map['popularity'] ?? '').toString(),
        posterPath: map['poster_path'] != null ? '${AppConfig.imagePath}${map['poster_path']}' : '',
        companies: (map['production_companies'] as List? ?? [])
            .map(
              (e) => CompanyModel.fromMap(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        releaseDate: map['release_date'] != null ? DateTime.parse(map['release_date']) : DateTime.now(),
        runtime: map['runtime'] ?? 0,
        status: map['status'] ?? '',
        tagline: map['tagline'] ?? '',
        title: map['title'] ?? '',
        video: map['video'] ?? false,
        voteAverage: (map['vote_average'] ?? '').toString(),
        voteCount: (map['vote_count'] ?? '').toString(),
      );

  String getGenre() {
    String genre = '';
    for (var element in genres) {
      genre += element.name;
      if (!(element == genres[genres.length - 1])) {
        genre += ' / ';
      }
    }
    return genre;
  }

  final bool adult;
  final String backdropPath;
  final CollectionModel collection;
  final int budget;
  final List<GenreModel> genres;
  final String homepage;
  final String id;
  final String imdbId;
  final List<String> originCountry;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final String popularity;
  final String posterPath;
  final List<CompanyModel> companies;
  final DateTime releaseDate;
  final int runtime;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final String voteAverage;
  final String voteCount;
}
