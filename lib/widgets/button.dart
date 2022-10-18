import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnText;
  final Function onBtnPressed;

  const Button({Key? key, required this.btnText, required this.onBtnPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color.fromARGB(255, 80, 194, 201),
          ),
        ),
        onPressed: () {
          onBtnPressed();
        },
        child: Text(
          btnText,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
