import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/controller/git_hub_controller.dart';
import '../../../utils/media.dart';
import 'home_tab_repos.dart';
import 'home_tab_starred.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool isSmallDevice;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    isSmallDevice = MediaQuery.of(context).size.width <= smallWidth;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildTabBar(),
        Flexible(
          child: _buildTabBarView(),
        ),
      ],
    );
  }

  Widget _buildTabBar() {
    return Stack(
      children: [
        Container(
          height: 57,
          width: isSmallDevice
              ? MediaQuery.of(context).size.width
              : MediaQuery.of(context).size.width - 250,
          alignment: Alignment.bottomCenter,
          child: Divider(height: 1),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          width: isSmallDevice
              ? MediaQuery.of(context).size.width
              : 400,
          child: TabBar(
            controller: _tabController,
            indicatorWeight: 5,
            tabs: <Widget>[
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Repos'),
                    const SizedBox(width: 5),
                    SizedBox(
                      height: 25,
                      child: Chip(
                        label: Text(
                          '''${context.watch<GitHubController>().userRepos.length}''',
                          style: TextStyle(height: 0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Starred'),
                    const SizedBox(width: 5),
                    SizedBox(
                      height: 25,
                      child: Chip(
                        label: Text(
                          '''${context.watch<GitHubController>().userStarred.length}''',
                          style: TextStyle(height: 0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabBarView() {
    return Container(
      height: MediaQuery.of(context).size.height - 140,
      width: isSmallDevice
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width - 250,
      child: TabBarView(
        controller: _tabController,
        children: <Widget>[
          HomeTabRepos(),
          HomeTabStarred(),
        ],
      ),
    );
  }
}
