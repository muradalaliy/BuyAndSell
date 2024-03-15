import 'package:BuyAndSell/core/constant/routes.dart';
import 'package:BuyAndSell/core/middleware/mymiddleware.dart';

import 'package:BuyAndSell/view/screen/category/categorylist.dart';
import 'package:BuyAndSell/view/screen/chat/chatpage.dart';
import 'package:BuyAndSell/view/screen/chat/chatscreen.dart';
import 'package:BuyAndSell/view/screen/details/detailsproduct.dart';
import 'package:BuyAndSell/view/screen/edit/editproduct.dart';
import 'package:BuyAndSell/view/screen/favorite/favorite.dart';
import 'package:BuyAndSell/view/screen/myads/myads.dart';
import 'package:BuyAndSell/view/screen/noaccount/noaccount.dart';

import 'package:BuyAndSell/view/screen/product/product_list.dart';
import 'package:BuyAndSell/view/screen/homescreen.dart';

import 'package:BuyAndSell/view/screen/auth/forgetpassword/forgetpassword.dart';

import 'package:BuyAndSell/view/screen/auth/verifycodesignup.dart';
import 'package:BuyAndSell/view/screen/auth/login.dart';
import 'package:BuyAndSell/view/screen/auth/signup.dart';
import 'package:BuyAndSell/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:BuyAndSell/view/screen/auth/successsignup.dart';
import 'package:BuyAndSell/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:BuyAndSell/view/screen/home.dart';
import 'package:BuyAndSell/view/screen/Onboarding.dart';

import 'package:BuyAndSell/view/screen/sell_forms/form.dart';
import 'package:BuyAndSell/view/screen/sell_forms/imagegrid.dart';
import 'package:BuyAndSell/view/screen/setting/changelanguage.dart';
import 'package:BuyAndSell/view/screen/setting/settings.dart';
import 'package:BuyAndSell/view/screen/userprofile/mainuserprofile.dart';

import 'package:get/get.dart';

import 'view/screen/auth/forgetpassword/resetpassword.dart';
import 'view/screen/category/categoryproducts.dart';
import 'view/screen/sell_item/sellercategorylist.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const OnBoarding(), middlewares: [MyMiddleware()]),
  // GetPage(
  //   name: "/",
  //   page: () =>  OnBoarding(),
  // ),
  //Auth
  GetPage(
    name: AppRoute.login,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRoute.signUp,
    page: () => const SignUp(),
  ),
  GetPage(
    name: AppRoute.forgetPassword,
    page: () => const ForgetPassword(),
  ),
  GetPage(
    name: AppRoute.detailsScreen,
    page: () => const DetailsScreen(),
  ),

  GetPage(
    name: AppRoute.categoryProducts,
    page: () => const CategoryProducts(),
  ),
  GetPage(
    name: AppRoute.resetPassword,
    page: () => const ResetPassword(),
  ),
  GetPage(
    name: AppRoute.verifyCode,
    page: () => const VerifyCode(),
  ),
  GetPage(
    name: AppRoute.successResetPassword,
    page: () => const SuccessResetPassword(),
  ),
  GetPage(
    name: AppRoute.successSignUp,
    page: () => const SuccessSignUp(),
  ),

//Boarding
  GetPage(
    name: AppRoute.onBoarding,
    page: () => const OnBoarding(),
  ),
  GetPage(
    name: AppRoute.verifyCodeSignUp,
    page: () => const VerifyCodeSignUp(),
  ),
  GetPage(
    name: AppRoute.homeScreen,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: AppRoute.home,
    page: () => const Home(),
  ),
  GetPage(
    name: AppRoute.productList,
    page: () => ProductList(
      active: true,
    ),
  ),
  GetPage(
    name: AppRoute.categoryList,
    page: () => const CategoryList(),
  ),

  GetPage(
    name: AppRoute.sellerCategoryList,
    page: () => const SellerCategoryList(),
  ),

  GetPage(
    name: AppRoute.form,
    page: () => const FormSell(),
  ),
  GetPage(
      name: AppRoute.editProducts, page: () => const EditProductFormState()),
  GetPage(
    name: AppRoute.imageGrid,
    page: () => ImageGrid(),
  ),
  GetPage(
    name: AppRoute.chatScreen,
    page: () => const ChatScreen(),
  ),
  GetPage(
    name: AppRoute.chatPage,
    page: () => const ChatPage(
      arguments: {},
    ),
  ),
  GetPage(
    name: AppRoute.myfavorite,
    page: () => const MyFavorite(),
  ),
  GetPage(
    name: AppRoute.settings,
    page: () => const SettingsPage(),
  ),
  GetPage(
    name: AppRoute.changeLanguge,
    page: () => const ChangeLanguage(),
  ),
  GetPage(
    name: AppRoute.mainUserProfile,
    page: () => const MainUserProfile(),
  ),
  GetPage(
    name: AppRoute.noAccount,
    page: () => NoAccount(),
  ),
  GetPage(
    name: AppRoute.myAds,
    page: () => MyAds(),
  ),
];
