import 'package:flutter_project/controllers/popular_product_controller.dart';
import 'package:flutter_project/data/api/api_client.dart';
import 'package:flutter_project/data/repository/popular_product_repo.dart';
import 'package:flutter_project/utils/app_constants.dart';
import 'package:get/get.dart';

import '../controllers/recommended_product_Controller.dart';
import '../data/repository/recommended_product_repo.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  // repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
}
