import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/controller/git_hub_controller.dart';
import '../../../utils/media.dart';
import '../../../widget/error.dart';
import '../../../widget/loading.dart';

class HomeUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var isSmallDevice = MediaQuery.of(context).size.width <= smallWidth;

    return Consumer<GitHubController>(
      builder: (context, controller, child) {
        if (controller.isLoading) {
          return Loading(
            height: 167,
            width: isSmallDevice ? null : 250,
          );
        } else if (controller.errorMsg != null) {
          return Error(
            msg: controller.errorMsg,
            height: 167,
            width: isSmallDevice ? null : 250,
          );
        }
        return Container(
          width: isSmallDevice ? null : 250,
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: isSmallDevice
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              Wrap(
                spacing: 10,
                runSpacing: 20,
                alignment:
                    isSmallDevice ? WrapAlignment.start : WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(73),
                    child: Image.network(
                      controller.user.avatarUrl,
                      width: isSmallDevice ? 73 : 146,
                      height: isSmallDevice ? 73 : 146,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: isSmallDevice
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      Text(
                        controller.user.name,
                        textAlign:
                            isSmallDevice ? TextAlign.start : TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        controller.user.login,
                        textAlign:
                            isSmallDevice ? TextAlign.start : TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: isSmallDevice ? 10 : 25,
              ),
              Text(
                controller.user.bio,
                textAlign: isSmallDevice ? TextAlign.start : TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        );
      },
    );
  }
}
