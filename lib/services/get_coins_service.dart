import 'package:basketball_counter_app/helper/api.dart';
import 'package:basketball_counter_app/models/coins_model.dart';

class GetCoinsService {
  Future<List<CoinsModel>> getCoins() async {
    List<dynamic> data =
        await Api().get(url: 'https://tamimapps.com/coins/home.php');
    List<CoinsModel> coinsList = [];
    for (int i = 0; i < data.length; i++) {
      coinsList.add(
        CoinsModel.fromJson(data[i]),
      );
    }
    return coinsList;
  }
}
