import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FinTest1PageWidget extends StatefulWidget {
  const FinTest1PageWidget({super.key});

  @override
  State<FinTest1PageWidget> createState() => _FinTest1PageWidgetState();
}

class _FinTest1PageWidgetState extends State<FinTest1PageWidget> {
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;
  int price = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text('Красивые цветы для всех-всех-всех'),
          Text('Купите цветы и порадуйте тех, кого вы так любите!'),
          CheckboxListTile(
            value: checkboxValue1,
            onChanged: (value) {
              setState(
                () {
                  checkboxValue1 = !checkboxValue1;
                  if (value == true) {
                    price += 100;
                  } else {
                    price -= 100;
                  }
                },
              );
            },
          ),
          CheckboxListTile(
            value: checkboxValue2,
            onChanged: (value) {
              setState(
                () {
                  checkboxValue2 = !checkboxValue2;
                  if (value == true) {
                    price += 140;
                  } else {
                    price -= 140;
                  }
                },
              );
            },
          ),
          CheckboxListTile(
            value: checkboxValue3,
            onChanged: (value) {
              setState(
                () {
                  checkboxValue3 = !checkboxValue3;
                  if (value == true) {
                    price += 2800;
                  } else {
                    price -= 2800;
                  }
                },
              );
            },
          ),
          ElevatedButton(
            onPressed: () {

            },
            child: Text('К Оплате'),
          ),
        ],
      ),
    );
  }
}
