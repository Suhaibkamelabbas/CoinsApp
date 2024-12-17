class CoinsModel {
  final String coinname;
  final String coinbuy;
  final String coinsale;
  final String date;

  CoinsModel(
      {required this.coinname,
      required this.coinbuy,
      required this.coinsale,
      required this.date});

  factory CoinsModel.fromJson(jsonData) {
    return CoinsModel(
        coinname: jsonData['coinname'],
        coinbuy: jsonData['coinbuy'],
        coinsale: jsonData['coinsale'],
        date: jsonData['date']);
  }
}
