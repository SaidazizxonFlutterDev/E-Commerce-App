import 'package:ecommerce_app/data/models/allproducts_model.dart';
import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeGridWidget extends StatelessWidget {
  List<AllProductsModel> productsModel;
  HomeGridWidget({super.key, required this.productsModel});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/homedetail', arguments: productsModel[index]);
            },
            child: Card(
              color: ColorConst.primaryBlue,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.network(productsModel[index].images.last,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        });
  }
}
