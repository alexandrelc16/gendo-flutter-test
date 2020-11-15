import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  final double height;
  final double width;
  final EdgeInsets padding;

  const Loading({this.height, this.width, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      padding: padding,
      child: SpinKitThreeBounce(
        color: Theme.of(context).accentColor,
        size: 40,
      ),
    );
  }
}
