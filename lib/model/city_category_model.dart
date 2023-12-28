class CityCategoryModel{
  int id;
  String name;

  CityCategoryModel({
    required this.id,
    required this.name,
  });
  List<CityCategoryModel> datacat=[];

  factory CityCategoryModel.fromJson(Map<String, dynamic> json) => CityCategoryModel(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}