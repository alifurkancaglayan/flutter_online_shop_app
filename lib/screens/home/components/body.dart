import 'package:flutter/material.dart';
import 'package:flutter_online_shop_app/constants.dart';
import 'package:flutter_online_shop_app/models/Product.dart';
import 'package:flutter_online_shop_app/screens/details/details_screen.dart';
import 'package:flutter_online_shop_app/screens/home/components/categories.dart';
import 'package:flutter_online_shop_app/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) => ItemCard(
                product: products[index],
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
