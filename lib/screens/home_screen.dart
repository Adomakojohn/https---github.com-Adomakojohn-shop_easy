import 'package:ecommerce_project/models/home_models.dart';
import 'package:ecommerce_project/screens/bottom_nav_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<FeaturedModel> featuredPictures = [
    FeaturedModel(
      referenceText: "Bueaty",
      featuredPicture: "assets/images/featuredOne.png",
    ),
    FeaturedModel(
      referenceText: "Fashion",
      featuredPicture: "assets/images/featuredTwo.png",
    ),
    FeaturedModel(
      referenceText: "Kids",
      featuredPicture: "assets/images/featuredThree.png",
    ),
    FeaturedModel(
      referenceText: "Women",
      featuredPicture: "assets/images/featuredFour.png",
    ),
    FeaturedModel(
      referenceText: "Men",
      featuredPicture: "assets/images/featuredFive.png",
    )
  ];

  List<DealsModel> deals = [
    DealsModel(
        imagePath: "assets/images/sneaker.png",
        itemName: "Sneaker",
        itemInfo: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        itemPrice: "\$500",
        itemRating: "⭐⭐⭐⭐⭐"),
    DealsModel(
        imagePath: "assets/images/dress.png",
        itemName: "Women printed kurta",
        itemInfo: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        itemPrice: "\$260",
        itemRating: "⭐⭐⭐⭐"),
  ];

  void signUserOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(212, 255, 255, 255),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage(
                        "assets/icons/components.png",
                      ),
                      height: 30,
                      width: 30,
                    ),
                    Image(
                      image: AssetImage(
                        "assets/images/profileP.png",
                      ),
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    hintText: "Search any product...",
                    hintStyle: const TextStyle(fontStyle: FontStyle.italic),
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(
                      Icons.mic_none_rounded,
                      size: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "ALL FEATURED",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 85,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(11)),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Row(
                              children: [
                                Text(
                                  "Sort",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Icon(Icons.double_arrow)
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 85,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(11)),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Row(
                              children: [
                                Text(
                                  "Filter",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Icon(Icons.filter_alt)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 115,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: featuredPictures.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            'cartscreen',
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 79,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage(
                                      featuredPictures[index].featuredPicture),
                                ),
                              ),
                            ),
                            Text(
                              featuredPictures[index].referenceText,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 212,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/discountPic.png")),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 11,
                        ),
                        const Text(
                          "50-40% OFF",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        const Text(
                          "Now In(Product)",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        const Text(
                          "All colors",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BottomNavBar()),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border(
                                bottom: BorderSide(color: Colors.white),
                                top: BorderSide(color: Colors.white),
                                right: BorderSide(color: Colors.white),
                                left: BorderSide(color: Colors.white),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Shop Now",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 90,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Deal of the day",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: Colors.white),
                          ),
                          Text(
                            "22h 55m 20s remaining",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border(
                            bottom: BorderSide(color: Colors.white),
                            top: BorderSide(color: Colors.white),
                            right: BorderSide(color: Colors.white),
                            left: BorderSide(color: Colors.white),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "View All",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 17,
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'productdetailspage');
                          },
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(deals[index].itemInfo),
                                Text(
                                  deals[index].itemPrice,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(deals[index].itemRating),
                                const SizedBox(
                                  height: 9,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                IconButton(onPressed: signUserOut, icon: const Text('log out'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
