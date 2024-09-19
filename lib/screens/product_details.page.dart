import 'package:ecommerce_project/widgets/containers.dart';
import 'package:flutter/material.dart';

import '../models/home_models.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  List<DealsModel> deals = [
    DealsModel(
        imagePath: "assets/images/productitem.png",
        itemName: "Sneaker",
        itemInfo: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        itemPrice: "\$500",
        itemRating: "⭐⭐⭐⭐⭐"),
    DealsModel(
        imagePath: "assets/images/productitem2.png",
        itemName: "Women printed kurta",
        itemInfo: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        itemPrice: "\$260",
        itemRating: "⭐⭐⭐⭐"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.restorablePushReplacementNamed(
                              context, 'bottomnavscreen');
                        },
                        child: const Icon(Icons.arrow_back_ios_new_rounded)),
                    const ImageIcon(
                      AssetImage('assets/icons/Cart.png'),
                      color: Colors.black87,
                      size: 35,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 400,
                  height: 300,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: const Image(
                      image: AssetImage('assets/images/mainproduct.png')),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'SIZE: 7UK',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShoeSizeContainer(
                      containerText: '6 UK',
                    ),
                    ShoeSizeContainer(
                      containerText: '7 UK',
                    ),
                    ShoeSizeContainer(
                      containerText: '8 UK',
                    ),
                    ShoeSizeContainer(
                      containerText: '9 UK',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      'Nike sb dunks',
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      '\$400',
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '25% off',
                      style: TextStyle(color: Colors.pinkAccent, fontSize: 22),
                    )
                  ],
                ),
                const Text(
                  'Product Details',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: 170,
                      decoration: const BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                          top: BorderSide(color: Colors.grey),
                          right: BorderSide(color: Colors.grey),
                          left: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 170,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                          top: BorderSide(color: Colors.grey),
                          right: BorderSide(color: Colors.grey),
                          left: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: const Text(''),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Similar Items',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 350,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: deals.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          alignment: Alignment.topCenter,
                          height: 250,
                          width: 250,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image(
                                    image: AssetImage(
                                      deals[index].imagePath,
                                    ),
                                  )),
                              Text(
                                deals[index].itemName,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text(deals[index].itemInfo),
                              Text(
                                deals[index].itemPrice,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              Text(deals[index].itemRating),
                              const SizedBox(
                                height: 9,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
