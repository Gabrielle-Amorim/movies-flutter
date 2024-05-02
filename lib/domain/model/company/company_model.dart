class CompanyModel {
  CompanyModel({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  factory CompanyModel.empty() => CompanyModel(
        id: '',
        logoPath: '',
        name: '',
        originCountry: '',
      );

  factory CompanyModel.fromMap(Map<String, dynamic> map) => CompanyModel(
        id: (map['id'] ?? '').toString(),
        logoPath: map['logo_path'] ?? '',
        name: map['name'] ?? '',
        originCountry: map['origin_country'] ?? '',
      );

  final String id;
  final String logoPath;
  final String name;
  final String originCountry;
}
