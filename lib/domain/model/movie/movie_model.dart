class MovieModel {
  MovieModel({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieModel.empty() => MovieModel(
        adult: false,
        backdropPath: '',
        genreIds: [],
        id: '',
        originalLanguage: '',
        originalTitle: '',
        overview: '',
        popularity: '',
        posterPath: '',
        releaseDate: '',
        title: '',
        video: false,
        voteAverage: '',
        voteCount: '',
      );

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      adult: map['adult'] ?? false,
      backdropPath: map['backdrop_path'] ?? '',
      genreIds: [],
      id: (map['id'] ?? '').toString(),
      originalLanguage: map['original_language'] ?? '',
      originalTitle: map['original_title'] ?? '',
      overview: map['overview'] ?? '',
      popularity: (map['popularity'] ?? '').toString(),
      posterPath: map['poster_path'] ?? '',
      releaseDate: map['release_date'] ?? '',
      title: map['title'] ?? '',
      video: map['video'] ?? false,
      voteAverage: (map['vote_average'] ?? '').toString(),
      voteCount: (map['vote_count'] ?? '').toString(),
    );
  }

  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final String id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final String popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final String voteAverage;
  final String voteCount;
}
