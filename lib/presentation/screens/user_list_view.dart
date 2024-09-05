import 'package:bdcallingassigment/presentation/screens/first_data_input.dart';
import 'package:bdcallingassigment/presentation/screens/second_data_input.dart';
import 'package:bdcallingassigment/presentation/widgets/background.dart';
import 'package:flutter/material.dart';

class userlistview extends StatefulWidget {
  const userlistview({super.key});

  @override
  State<userlistview> createState() => _userlistviewState();
}

class _userlistviewState extends State<userlistview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chose your data set',
        ),
      ),
      body: Backgroundwidget(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FirstDataInput(),
                      ),
                    );
                  },
                  child: const Text('1st user Input'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondDataInput(),
                      ),
                    );
                  },
                  child: const Text('2nd user Input'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
