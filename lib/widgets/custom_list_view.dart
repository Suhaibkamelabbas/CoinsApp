import 'package:basketball_counter_app/models/coins_model.dart';
import 'package:basketball_counter_app/services/get_coins_service.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CoinsModel>>(
      future: GetCoinsService().getCoins(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          List<CoinsModel> coins = snapshot.data!;
          return ListView.builder(
            itemCount: coins.length,
            itemBuilder: (context, index) {
              return Custom(
                coin: coins[index],
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

// ignore: must_be_immutable
class Custom extends StatelessWidget {
  Custom({Key? key, required this.coin}) : super(key: key);

  CoinsModel coin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 52,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj94DuBxfJAtOXx_QGtGHXTXWwQ_AQlxcRfHBd1g-9sw&s'),
                      radius: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    coin.coinname,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[300],
                    ),
                    child: Row(
                      children: [
                        CustomContainer(textPrice: coin.coinbuy, text: 'Buy'),
                        const SizedBox(
                          width: 50,
                        ),
                        CustomContainer(textPrice: coin.coinsale, text: 'Sell'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(coin.date),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
