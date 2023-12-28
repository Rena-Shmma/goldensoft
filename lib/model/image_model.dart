class ImageModel {
  final String? image;
  final int? country_id;

  ImageModel({  this.image, this.country_id,});

  factory ImageModel.fromJson(dynamic json) {
    if (json == null) {
      return ImageModel();
    }

    return ImageModel(
        image: json['image'],
        country_id: json['country_id'],
    );
  }
}
