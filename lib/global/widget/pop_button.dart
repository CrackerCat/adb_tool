import 'package:flutter/material.dart';

class PopButton extends StatelessWidget {
  const PopButton({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        height: 36,
        width: 36,
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
