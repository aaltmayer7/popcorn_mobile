import 'package:popcorn_mobile/domain/burger/burger_model.dart';

abstract class IBurgerRepository {
  Future<List<BurgerModel>> findBurgers();
}
