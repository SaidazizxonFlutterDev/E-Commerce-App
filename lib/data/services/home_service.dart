import 'package:dio/dio.dart';
import 'package:ecommerce_app/data/models/allproducts_model.dart';
import 'package:ecommerce_app/data/models/categories_model.dart';
import 'package:ecommerce_app/presentation/core/constants/url_const.dart';

class HomeService {
  static Future getAll() async {
    Response res = await Dio().get("${UrlConst.baseUrl}/products/");
    return (res.data as List).map((e) => AllProductsModel.fromJson(e)).toList();
  }

  static Future getCategories() async {
    Response res = await Dio().get("${UrlConst.baseUrl}/categories/");
    print(res);
    return (res.data as List).map((e) => CategoriesModel.fromJson(e)).toList();
  }
}
