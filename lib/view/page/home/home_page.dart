import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/controller/git_hub_controller.dart';
import 'component/home_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GitHubController>(
      create: (_) => GitHubController()
        ..getUser()
        ..getUserRepos()
        ..getUserStarred(),
      lazy: false,
      child: HomeBody(),
    );
  }
}
