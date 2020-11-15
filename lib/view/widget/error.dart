import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Error extends StatelessWidget {
  final String msg;
  final double height;
  final double width;
  final EdgeInsets padding;

  const Error({
    this.msg = 'Algo errado aconteceu.',
    this.height,
    this.width,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.sadTear,
            color: Theme.of(context).errorColor.withOpacity(.5),
            size: 40,
          ),
          const SizedBox(height: 8),
          Text(
            msg,
            style: TextStyle(
              color: Theme.of(context).errorColor,
            ),
          ),
        ],
      ),
    );
  }
}
