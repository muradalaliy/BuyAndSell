// import 'package:get/get.dart';

// import '../category/category-controller.dart';

// class FavoriteController extends GetxController {
//   RxList<Product> favoriteProducts = <Product>[].obs;

//   void addToFavorites(Product product) {
//     favoriteProducts.add(product);
//   }

//   void removeFromFavorites(Product product) {
//     favoriteProducts.remove(product);
//   }

//   bool isProductFavorite(Product product) {
//     return favoriteProducts.contains(product);
//   }
// }
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  Map isFavorite = {};
  setFavorite(id, val) {
    isFavorite[id] = val;
    update();
  }
}
