import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/model/user_starred.dart';
import '../../../../utils/media.dart';
import '../../../../widget/icon_value.dart';

class HomeListTileUserStarred extends StatelessWidget {
  final UserStarred userStarred;

  const HomeListTileUserStarred({@required this.userStarred})
      : assert(userStarred != null);

  @override
  Widget build(BuildContext context) {
    var isSmallDevice = MediaQuery.of(context).size.width <= smallWidth;

    return ListTile(
      contentPadding: isSmallDevice
          ? const EdgeInsets.symmetric(horizontal: 32)
          : EdgeInsets.zero,
      title: Wrap(
        children: [
          Text(
            '${userStarred.owner.login} / ',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            userStarred.name,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            userStarred.description ?? '',
            style: Theme.of(context).textTheme.subtitle2.copyWith(height: 1.2),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 18,
            children: [
              if (userStarred.stargazersCount != null)
                IconValue(
                  iconData: FontAwesomeIcons.solidStar,
                  value: userStarred.stargazersCount.toString(),
                ),
              if (userStarred.forks != null)
                IconValue(
                  iconData: FontAwesomeIcons.codeBranch,
                  value: userStarred.forks.toString(),
                ),
            ],
          ),
        ],
      ),
      isThreeLine: true,
    );
  }
}
