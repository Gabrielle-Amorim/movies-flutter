class GenreModel {
  GenreModel({
    required this.id,
    required this.name,
  });

  factory GenreModel.fromMap(Map<String, dynamic> map) => GenreModel(
        id: (map['id'] ?? ''),
        name: (map['name'] ?? ''),
      );

  final int id;
  final String name;
}
