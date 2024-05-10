
class CategoriesModel {
    int id;
    String name;
    String image;
    DateTime creationAt;
    DateTime updatedAt;

    CategoriesModel({
        required this.id,
        required this.name,
        required this.image,
        required this.creationAt,
        required this.updatedAt,
    });

    factory CategoriesModel.fromJson(Map<String, dynamic> json) => CategoriesModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        creationAt: DateTime.parse(json["creationAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );
}
