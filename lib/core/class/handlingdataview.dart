import 'package:BuyAndSell/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constant/color.dart';
import '../constant/imageasset.dart';
import '../constant/routes.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
            child: CircularProgressIndicator(
            color: AppColor.primaryColor,
            backgroundColor: AppColor.grey,
          ))
        : statusRequest == StatusRequest.offlinefailure
            ? const Center(child: Text("قم بتشغيل الانترنت "))
            : statusRequest == StatusRequest.serverfailure
                ? const Center(child: Text("خطا في السرفر"))
                : statusRequest == StatusRequest.failure
                    ? const Center(child: Text("لايوجد بيانات"))
                    : statusRequest == StatusRequest.offlinefailure
                        ? const Center(child: Text("لايوجد بياsنات"))
                        : statusRequest == StatusRequest.nullSearch
                            ? const Center(child: Text("لا يوجد نتائج"))
                            : statusRequest == StatusRequest.needLogin
                                ? const StatesWidgit(
                                    login: true,
                                    svgImg: AppImageAsset.noData,
                                    title: "مدة الجلسة انتهت يجب تسجيل الدخول ",
                                  )
                                : statusRequest == StatusRequest.noLogin
                                    ? const StatesWidgit(
                                        svgImg: AppImageAsset.noData,
                                        login: false,
                                        title:
                                            'يجب تسجيل الدخول لعرض منتجاتك المضافة في السلة',
                                      )
                                    : statusRequest ==
                                            StatusRequest.serverException
                                        ? const Center(
                                            child: Text("خطاء في الصرف "))
                                        : statusRequest ==
                                                StatusRequest.nullcart
                                            ? const StatesWidgit(
                                                login: false,
                                                svgImg: AppImageAsset.noData,
                                                title:
                                                    "لايوجد منتجات في السلة قم بالتسوق والاضافة للسلة الان",
                                              )
                                            : widget;
  }
}

class StatesWidgit extends StatelessWidget {
  final String? title;
  final String? svgImg;
  final bool login;
  const StatesWidgit({super.key, this.title, this.svgImg, required this.login});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: SvgPicture.asset(svgImg!, height: 250, width: 250),
        ),
        Center(child: Text(title!)),
        const SizedBox(
          height: 10,
        ),
        Visibility(
          visible: login,
          child: ActionChip(
            backgroundColor: AppColor.buttonNanbar,
            onPressed: () {
              Get.toNamed(AppRoute.login, arguments: {
                'from': '1',
              });
            },
            label: Text(
              'تسجيل الدخول ',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        )
      ],
    );
  }
}
