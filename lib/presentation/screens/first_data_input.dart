import 'package:bdcallingassigment/model/data_set_one.dart';
import 'package:flutter/material.dart';

class FirstDataInput extends StatefulWidget {
  const FirstDataInput({super.key});

  @override
  State<FirstDataInput> createState() => _FirstDataInputState();
}

class _FirstDataInputState extends State<FirstDataInput> {
  // List Mylist = DataSet1;
  // AndroidVerison androidVerison = DataSet1[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DataSet 1"),
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: DataSet1.length,
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: index == 2
                    ? Row(
                        children: [
                          SizedBox(),
                          Text(
                            DataSet1[index]['title'].toString(),
                          ),
                        ],
                      )
                    : Text(
                        DataSet1[index]['title'].toString(),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}
