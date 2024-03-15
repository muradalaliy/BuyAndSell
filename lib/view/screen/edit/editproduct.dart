
import 'package:BuyAndSell/view/widget/sellforms/customtextformsell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../controller/Sell/sellformcontroller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/customappbar.dart';

class EditProductFormState extends StatelessWidget {
  const EditProductFormState({super.key});

  @override
  Widget build(BuildContext context) {
  //var args = Get.arguments;
    ProductScreenControllerImp controller =
        Get.put(ProductScreenControllerImp());
   
    
        return Scaffold(
          appBar: const CustomAppBar(
            textappbar: 'Add some details',
          ),
          body: Form(
            key: controller.formstate,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 10, bottom: 9),
                        child:const Text("args")),
                    const SizedBox(
                      height: 20,
                    ),
                    // CustomTextFormSell(
                    //   isNumber: false,
                    //   valid: (val) {
                    //     return validInput(val!, 5, 20, "text");
                    //   },
                    //   hinttext: "Bed/Wardrobe/other".tr,
                    //   labletext: "Type".tr,
                //      mycontroller: controller.typecontroller,
                   // ),
                    //  CustomTextFormSell(
                    //       isNumber: false,
                    //       valid: (val) {
                    //         return validInput(val!, 5, 100, "text");
                    //       },
                    //       hinttext: "How ".tr,
                    //       labletext: "Year".tr,
                    //       mycontroller: controller.typecontroller,
                    //     ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     InkWell(
                    //       child: Container(
                    //         width: 70,
                    //         margin: const EdgeInsets.only(bottom: 20.0),
                    //         child: TextFormField(
                    //           controller: controller.pricecontroller,
                    //           decoration: InputDecoration(
                    //               contentPadding: const EdgeInsets.symmetric(
                    //                   vertical: 18, horizontal: 30),
                    //               suffixIcon: InkWell(
                    //                 onTap: () {},
                    //                 child: const Icon(
                    //                   Icons.arrow_drop_down,
                    //                   size: 30,
                    //                 ),
                    //               ),
                    //               border: OutlineInputBorder(
                    //                 borderRadius: BorderRadius.circular(10),
                    //               )),
                    //         ),
                    //       ),
                    //     ),
                    //     Container(
                    //       width: 285,
                    //       child: CustomTextFormSell(
                    //         isNumber: false,
                    //         valid: (val) {
                    //           return validInput(val!, 3, 100, "");
                    //         },
                    //         hinttext: "Rs".tr,
                    //         labletext: "Price".tr,
                    //         mycontroller: controller.pricecontroller,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // Set a fixed height for the dropdown menu

                    Row(
                      children: [
                       
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: CustomTextFormSell(
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 3, 100, "");
                            },
                            hinttext: "Rs".tr,
                            labletext: "Price".tr,
                            mycontroller: controller.pricecontroller,
                          ),
                        ),
                      ],
                    ),

                    const Divider(color: Colors.grey, thickness: 1),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormSell(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 2, 100, "");
                      },
                      maxLength: 100,
                      hinttext:
                          "Mention the key features (e.g brand , model)".tr,
                      hintStyle: const TextStyle(fontSize: 14),
                      labletext: "title".tr,
                      mycontroller: controller.titlecontroller,
                    ),
                    CustomTextFormSell(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 2, 4000, "");
                      },
                      maxLines: 4,
                      minLines: 2,
                      maxLength: 4000,
                      hinttext:
                          "Include condition, features, reson for selling".tr,
                      hintStyle: const TextStyle(
                        fontSize: 14,
                      ),
                      labletext: "Description".tr,
                      mycontroller: controller.descriptioncontroller,
                    ),
                    CustomTextFormSell(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 2, 4000, "");
                      },
                      maxLines: 4,
                      minLines: 2,
                      hinttext: "Seller address".tr,
                      hintStyle: const TextStyle(
                        fontSize: 14,
                      ),
                      labletext: "Adress".tr,
                      maxLength: 4000,
                      mycontroller: controller.addresscontroller,
                    ),

                    
                    const SizedBox(
                      height: 60,
                    )
                  ],
                ),
              ),
            ),
          ),
          bottomSheet: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton(
                  textColor: Colors.white,
                  onPressed: () {
                  //   String address = controller.addresscontroller.text;
                  //   String description = controller.descriptioncontroller.text;
                    
                  //   Navigator.pushNamed(
                  // context,
                  // AppRoute.finishScreen,
                  // arguments: {'name': address, 'description': description},
                //);
                      controller.goToAddImage();
                  },
                  color: AppColor.curved,
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Next",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ))
            ],
          ),
        );
  }
}
