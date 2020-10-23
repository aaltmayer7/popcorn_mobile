import 'package:popcorn_mobile/domain/burger/burger_model.dart';
import 'package:popcorn_mobile/infrastructure/burger/burger_repository_adapter.dart';

class BurgerRepository implements IBurgerRepository {
  BurgerRepository();

  @override
  Future<List<BurgerModel>> findBurgers() async {
    try {
      return [
        BurgerModel(name: 'Big King'),
        BurgerModel(name: 'Big Mac'),
        BurgerModel(name: 'Beef BBQ'),
        BurgerModel(name: 'Big Tasty'),
        BurgerModel(name: 'CBO'),
      ];
    } catch (e) {
      print(e.toString());
      return Future.error(e.toString());
    }
  }
}
