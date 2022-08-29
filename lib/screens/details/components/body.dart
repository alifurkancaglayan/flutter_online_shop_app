import 'package:flutter/material.dart';
import 'package:flutter_online_shop_app/constants.dart';
import 'package:flutter_online_shop_app/models/Product.dart';
import 'package:flutter_online_shop_app/screens/details/components/add_to_cart.dart';
import 'package:flutter_online_shop_app/screens/details/components/color_and_size.dart';
import 'package:flutter_online_shop_app/screens/details/components/counter_with_fav_btn.dart';
import 'package:flutter_online_shop_app/screens/details/components/description.dart';
import 'package:flutter_online_shop_app/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            //height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.42),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  //height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product, size: size)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
