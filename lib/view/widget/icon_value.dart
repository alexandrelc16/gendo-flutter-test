import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconValue extends StatelessWidget {
  final IconData iconData;
  final String value;

  const IconValue({
    @required this.iconData,
    @required this.value,
  })  : assert(iconData != null),
        assert(value != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FaIcon(
          iconData,
          size: 14,
        ),
        const SizedBox(width: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.subtitle2.copyWith(height: 1.4),
        ),
      ],
    );
  }
}
