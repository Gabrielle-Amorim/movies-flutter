class CollectionModel {
  CollectionModel({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath,
  });

  factory CollectionModel.empty() => CollectionModel(
        id: '',
        name: '',
        posterPath: '',
        backdropPath: '',
      );

  factory CollectionModel.fromMap(Map<String, dynamic> map) {
    return CollectionModel(
      id: (map['id'] ?? '').toString(),
      name: map['name'] ?? '',
      posterPath: map['poster_path'] ?? '',
      backdropPath: map['backdrop_path'] ?? '',
    );
  }

  final String id;
  final String name;
  final String posterPath;
  final String backdropPath;
}
