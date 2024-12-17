import 'package:flutter/material.dart';

class GoldView extends StatelessWidget {
  const GoldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[200],
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('a'),
            ),
          ),
        ],
      ),
    );
  }
}
