import 'package:get/get.dart';
import 'package:popcorn_mobile/domain/burger/burger_model.dart';
import 'package:popcorn_mobile/infrastructure/burger/burger_repository_adapter.dart';

enum Status { loading, success, error }

class BurgerController extends GetxController {
  BurgerController({this.burgerRepository});

  final IBurgerRepository burgerRepository;
  final Rx<Status> status = Status.loading.obs;
  final Rx<List<BurgerModel>> burgers = Rx<List<BurgerModel>>([]);

  @override
  void onInit() => fetchDataFromApi();

  Future<void> fetchDataFromApi() async {
    try {
      final List<BurgerModel> data = await burgerRepository.findBurgers();
      burgers(data);
      status(Status.success);
    } catch (err) {
      print("$err");
      return status(Status.error);
    }
  }
}
