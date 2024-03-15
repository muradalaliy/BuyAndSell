// import 'package:BuyAndSell/controller/Sell/sellformcontroller.dart';
// import 'package:BuyAndSell/controller/category/categorycontroller.dart';
// import 'package:BuyAndSell/core/constant/color.dart';
// import 'package:BuyAndSell/view/screen/details/customappbardetails.dart';
// import 'package:BuyAndSell/view/widget/profile/customstar.dart';
// import 'package:BuyAndSell/view/widget/detailsPro/customproductimagesider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class DetailsScreenProfile extends StatelessWidget {
//   const DetailsScreenProfile({super.key, this.category, this.product});
//   final Category? category;
//   final Product? product;
//   @override
//   Widget build(BuildContext context) {
//     ProductScreenControllerImp controller =
//         Get.put(ProductScreenControllerImp());
//     return Scaffold(
//       appBar: CustomDetailsAppBar(
//         onPressed: () {
//           controller.goToEditProduct();
//         },
//         icon: Icon(
//           Icons.favorite,
//           color: Colors.grey.shade500,
//         ),
//         iconback: Icon(
//           Icons.arrow_back_ios,
//           color: Colors.grey.shade500,
//         ),
//         onPressedback: () {
//           Navigator.pop(context);
//         },
//       ),
//       body: SingleChildScrollView(
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           SizedBox(
//             height: MediaQuery.of(context).size.height / 2.1,
//             width: MediaQuery.of(context).size.width,
//             child: Stack(children: [
//               Center(
//                 child: product != null
//                     ? ProductImageSider(product: product!)
//                     : Container(),
//               ),
//             ]),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Row(
//                   children: [
//                     SizedBox(
//                       child: CustomStar(),
//                     )
//                   ],
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   product!.name,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, fontSize: 22),
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       "${product!.price}",
//                       style: const TextStyle(
//                         fontWeight: FontWeight.w300,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 2,
//                 ),
//                 Text(
//                   product!.description,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.w500, fontSize: 18),
//                 ),
//                 const SizedBox(
//                   height: 24,
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         color: Colors.grey.shade300,
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 product!.type,
//                                 style: const TextStyle(fontSize: 16),
//                               ),
//                               const Text(
//                                 "Write anything here",
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 12),
//                 Divider(
//                   color: Colors.grey[800],
//                 ),
//                 Row(
//                   children: [
//                     CircleAvatar(
//                       backgroundColor: AppColor.curved,
//                       radius: 40,
//                       child: CircleAvatar(
//                         backgroundColor: Colors.blue.shade50,
//                         radius: 38,
//                         child: Icon(
//                           CupertinoIcons.person_alt,
//                           color: Colors.red.shade300,
//                           size: 50,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Expanded(
//                         child: ListTile(
//                       title: Text(
//                         product!.addedBy.toUpperCase(),
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 18),
//                       ),
//                       subtitle: GestureDetector(
//                         onTap: () {},
//                         child: Text(
//                           "See Profile".tr,
//                           style: TextStyle(
//                             color: Colors.red.shade300,
//                             fontFamily: "Muli",
//                           ),
//                         ),
//                       ),
//                     ))
//                   ],
//                 ),
//                 Divider(
//                   color: Colors.grey[800],
//                 ),
//                  Text(
//                   "Add Posted at".tr,
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Container(
//                   padding: const EdgeInsets.all(18),
//                   height: 100,
//                   color: Colors.grey.shade300,
//                   child: Center(
//                     child: Text(product!.adress),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 60,
//                 )
//               ],
//             ),
//           )
//         ]),
//       ),
//       bottomSheet: BottomAppBar(
//           child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           children: [
//             Expanded(
//                 child: MaterialButton(
//                   height: 40,
//               color: AppColor.curved,
//               child:  Row(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.edit,
//                       size: 20,
//                       color: Colors.white,
//                     ),
//                     SizedBox(width: 20),
//                     Text(
//                       "Edit Product".tr,
//                       style: TextStyle(color: Colors.white , fontSize: 18),
//                     ),
//                   ]),
//               onPressed: () {
//                 controller.goToEditProduct();
//               },
//             )),
//             const SizedBox(width: 20),
          
//           ],
//         ),
//       )),
//     );
//   }
// }
