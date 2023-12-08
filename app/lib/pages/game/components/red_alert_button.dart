import 'package:flutter/material.dart';

class RedAlertButton extends StatelessWidget {
  const RedAlertButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              height: 400,
              child: ListView(

              ),
            );
          },
        );
      },
      child: Container(
        height: 75,
        width: 75,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
        child: const Center(
          child: Text(
            '!',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
