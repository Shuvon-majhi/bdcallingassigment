import 'package:bdcallingassigment/model/data_set_two.dart';
import 'package:flutter/material.dart';

class SecondDataInput extends StatefulWidget {
  const SecondDataInput({super.key});

  @override
  State<SecondDataInput> createState() => _SecondDataInputState();
}

class _SecondDataInputState extends State<SecondDataInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: DataSet2.map((row) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: row.map((item) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Text(
                    item["0"]["title"],
                    style: const TextStyle(fontSize: 16),
                  ),
                );
              }).toList(),
            );
          }).toList(),
        ),
      ),
    );
  }
}
