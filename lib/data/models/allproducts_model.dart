
class AllProductsModel {
    int id;
    String title;
    int price;
    String description;
    List<String> images;
    DateTime creationAt;
    DateTime updatedAt;
    Category category;

    AllProductsModel({
        required this.id,
        required this.title,
        required this.price,
        required this.description,
        required this.images,
        required this.creationAt,
        required this.updatedAt,
        required this.category,
    });

    factory AllProductsModel.fromJson(Map<String, dynamic> json) => AllProductsModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"],
        images: List<String>.from(json["images"].map((x) => x)),
        creationAt: DateTime.parse(json["creationAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        category: Category.fromJson(json["category"]),
    );

  
}

class Category {
    int id;
    Name name;
    String image;
    DateTime creationAt;
    DateTime updatedAt;

    Category({
        required this.id,
        required this.name,
        required this.image,
        required this.creationAt,
        required this.updatedAt,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: nameValues.map[json["name"]]!,
        image: json["image"],
        creationAt: DateTime.parse(json["creationAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

}

enum Name {
    CLOTHES,
    ELECTRONICS,
    FURNITURE,
    MISCELLANEOUS,
    SHOES,
    STORY
}

final nameValues = EnumValues({
    "Clothes": Name.CLOTHES,
    "Electronics": Name.ELECTRONICS,
    "Furniture": Name.FURNITURE,
    "Miscellaneous": Name.MISCELLANEOUS,
    "Shoes": Name.SHOES,
    "story": Name.STORY
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
