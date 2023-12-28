class AllCountriesModel {
  final int? id;
  final String? name;
  final String? image;

  AllCountriesModel({ this.id,this.name,this.image,});


  factory AllCountriesModel.fromJson(Map<String,dynamic> json) {
    if (json == null) {
      return AllCountriesModel();
    }

    return AllCountriesModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}