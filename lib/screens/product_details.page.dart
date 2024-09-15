import 'package:ecommerce_project/widgets/containers.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_new_rounded),
                    ImageIcon(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
