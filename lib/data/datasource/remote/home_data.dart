import '../../../core/class/curd.dart';
import '../../../linkapi.dart';
import 'dart:io';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  getData() async {
    var response = await crud.getData(AppLink.homeApi);
    return response.fold((l) => l, (r) => r);
  }

  postSeach(String query) async {
    var response = await crud.postData(AppLink.server, {"str": query});
    return response.fold((l) => l, (r) => r);
  }

  postAddproduct(
    String name,
    String description,
    String address,
    File image,
    File image1,
    File image2,
    File image3,
    File image4,
    File image5,
    String price,
    String customer_id,
    String category_id,
  ) async {
    var response = await crud.postDataimg(
      AppLink.addProduct,
      {
        "name": name,
        "description": description,
        "address": address,
        "price": price,
        "customer_id": customer_id,
        "category_id": category_id,
      },
      image,
      image1,
      image2,
      image3,
      image4,
      image5,
    );
    return response.fold((l) => l, (r) => r);
  }

  postProOfBrand(String id) async {
    var response = await crud.postData(AppLink.server, {"id": id});
    return response.fold((l) => l, (r) => r);
  }

  postCatOfsecionId(String id, String idCategorie) async {
    var response =
        await crud.postData(AppLink.server, {"id": id, "idcat": idCategorie});
    return response.fold((l) => l, (r) => r);
  }

  postProCatId(String id, String iduser) async {
    var response = await crud
        .postData(AppLink.server, {"categorie_id": id, "id_user": iduser});
    return response.fold((l) => l, (r) => r);
  }

  postProCatIdpaginate(String id, String iduser, String pagnuber) async {
    var response = await crud.postData(
        AppLink.server + pagnuber, {"categorie_id": id, "id_user": iduser});
    return response.fold((l) => l, (r) => r);
  }

  getRatingOfId(String idpro) async {
    var response = await crud.postData(AppLink.server, {"idpro": idpro});
    return response.fold((l) => l, (r) => r);
  }
}
