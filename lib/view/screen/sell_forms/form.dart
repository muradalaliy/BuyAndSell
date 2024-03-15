import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../controller/Sell/sellformcontroller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/customappbar.dart';
import '../../widget/sellforms/customtextformsell.dart';

class ProductFormState extends ChangeNotifier {
  List<String> currencies = ['ريال', 'دولار'];
  String selectedCurrency = 'ريال';

  void updateSelectedCurrency(String currency) {
    selectedCurrency = currency;
    notifyListeners();
  }
}

class FormSell extends StatelessWidget {
  const FormSell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //   var args = Get.arguments;
    ProductScreenControllerImp controller =
        Get.put(ProductScreenControllerImp());
    return Consumer<ProductFormState>(
      builder: (context, productFormState, _) {
        return Scaffold(
          appBar: CustomAppBar(
            textappbar: 'Add product details'.tr,
          ),
          body: Form(
            key: controller.formstate,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      controller.name,
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColor.curved,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
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
                      labletext: "Title".tr,
                      mycontroller: controller.titlecontroller,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(bottom: 20),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: DropdownButton<String>(
                            value: productFormState.selectedCurrency,
                            onChanged: (value) {
                              productFormState.updateSelectedCurrency(value!);
                            },
                            items:
                                productFormState.currencies.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: CustomTextFormSell(
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 2, 100, "");
                            },
                            hinttext: "Include currency".tr,
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
                        return validInput(val!, 10, 4000, "");
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
                        return validInput(val!, 10, 4000, "");
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
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Next".tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ))
            ],
          ),
        );
      },
    );
  }
}
