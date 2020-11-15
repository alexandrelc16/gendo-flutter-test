import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/model/user_repos.dart';
import '../../../../utils/media.dart';
import '../../../../widget/icon_value.dart';

class HomeListTileUserRepos extends StatelessWidget {
  final UserRepos userRepos;

  const HomeListTileUserRepos({@required this.userRepos})
      : assert(userRepos != null);

  @override
  Widget build(BuildContext context) {
    var isSmallDevice = MediaQuery.of(context).size.width <= smallWidth;

    return ListTile(
      contentPadding: isSmallDevice
          ? const EdgeInsets.symmetric(horizontal: 32)
          : EdgeInsets.zero,
      title: Text(
        userRepos.name,
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            userRepos.description ?? '',
            style: Theme.of(context).textTheme.subtitle2.copyWith(height: 1.2),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 18,
            children: [
              if (userRepos.language != null)
                IconValue(
                  iconData: FontAwesomeIcons.code,
                  value: userRepos.language,
                ),
              if (userRepos.forks != null)
                IconValue(
                  iconData: FontAwesomeIcons.codeBranch,
                  value: userRepos.forks.toString(),
                ),
            ],
          ),
        ],
      ),
      isThreeLine: true,
    );
  }
}
