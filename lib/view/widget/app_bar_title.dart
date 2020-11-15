import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 16),
        FaIcon(
          FontAwesomeIcons.github,
          size: 30,
          color: Colors.white,
        ),
        const SizedBox(width: 10),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 20,
            ),
            children: [
              TextSpan(
                text: 'Github',
                style: Theme.of(context)
                    .appBarTheme
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ' profiles',
                style: Theme.of(context).appBarTheme.textTheme.headline6,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
