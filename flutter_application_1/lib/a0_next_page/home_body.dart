import 'package:flutter/material.dart';

import 'homebody/home_Body_a1.dart';

class homebody extends StatelessWidget {
  const homebody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              ////1 cách 1
              child: const Text(
                'Qui qui vel et.',
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeBodyA1()));
              }),

          //

          //
        ],
      ),
    );
  }
}
