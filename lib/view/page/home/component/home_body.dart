import 'package:flutter/material.dart';

import '../../../widget/app_bar_title.dart';
import 'home_user.dart';
import 'tab/home_tab.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: <Widget>[
            HomeUser(),
            HomeTab(),
          ],
        ),
      ),
    );
  }
}
