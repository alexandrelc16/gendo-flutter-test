import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/controller/git_hub_controller.dart';
import '../../../../widget/error.dart';
import '../../../../widget/loading.dart';
import 'widget/home_list_tile_user_repos.dart';
import 'widget/home_text_field_search.dart';

class HomeTabRepos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GitHubController>(
      builder: (context, controller, child) {
        if (controller.isLoading) {
          return Loading(padding: const EdgeInsets.only(bottom: 150));
        } else if (controller.errorMsg != null) {
          return Error(
            msg: controller.errorMsg,
            padding: const EdgeInsets.only(bottom: 150),
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeTextFieldSearch(onChanged: controller.filterRepos),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: controller.listUserReposFiltered.length,
                itemBuilder: (context, index) => HomeListTileUserRepos(
                  userRepos: controller.listUserReposFiltered[index],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
