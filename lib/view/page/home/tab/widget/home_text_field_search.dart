import 'package:flutter/material.dart';

import '../../../../utils/media.dart';

class HomeTextFieldSearch extends StatelessWidget {
  final Function onChanged;

  const HomeTextFieldSearch({@required this.onChanged})
      : assert(onChanged != null);

  @override
  Widget build(BuildContext context) {
    var isSmallDevice = MediaQuery.of(context).size.width <= smallWidth;

    return Container(
      width: 400,
      padding: isSmallDevice
          ? const EdgeInsets.all(32)
          : const EdgeInsets.symmetric(vertical: 32),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Filter by name',
          prefixIconConstraints: const BoxConstraints(
            minHeight: 16,
            minWidth: 42,
          ),
          prefixIcon: Icon(Icons.search, size: 26),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
