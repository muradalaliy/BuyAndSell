import 'package:BuyAndSell/core/constant/color.dart';
import 'package:BuyAndSell/view/screen/details/detailsproduct.dart';
import 'package:BuyAndSell/view/widget/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(textappbar: "Favorite"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, id) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
                key: Key(id.toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {},
                background: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      SvgPicture.asset("assets/icons/Trash.svg"),
                    ],
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 88,
                        child: AspectRatio(
                          aspectRatio: 0.88,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F6F9),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset("assets/images/Desk.jpeg"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Product name",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Muli",
                            ),
                            maxLines: 2,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: const Icon(
                                  Icons.person,
                                  size: 18,
                                  color: AppColor.darkGreen,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Add By",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Muli",
                                ),
                              ),
                              const SizedBox(
                                width: 150,
                              ),
                              const Text.rich(
                                TextSpan(
                                  text: "\$990",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.colorGoogle,
                                    fontFamily: "Muli",
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Container(
        // Add your product details content here
        child: Center(
          child: Text('Product Details'),
        ),
      ),
    );
  }
}
