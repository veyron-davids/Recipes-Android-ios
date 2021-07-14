import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendAmount;
  final double spendingPctg;
  ChartBar(this.label, this.spendAmount, this.spendingPctg);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('\$${spendAmount.toStringAsFixed(0)}'),
      SizedBox(
        height: 4,
      ),
      Container(
        height: 60,
        width: 10,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10)),
            ),
            FractionallySizedBox(
              heightFactor: spendingPctg,
              child: Container( ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 4,
      ),
      Text(label)
    ]);
  }
}
