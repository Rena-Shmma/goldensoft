class CountryModel {

  final int? id;
  final String? name;

  CountryModel({ this.id, this.name,});

  factory CountryModel.fromJson(dynamic json) {
    if (json == null) {
      return CountryModel();
    }

    return CountryModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
