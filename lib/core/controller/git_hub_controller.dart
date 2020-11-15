import 'package:flutter/widgets.dart';

import '../exception/utils.dart';
import '../model/user.dart';
import '../model/user_repos.dart';
import '../model/user_starred.dart';
import '../repository/git_hub_repository.dart';


class GitHubController extends ChangeNotifier {
  bool isLoading;
  GitHubRepository gitHubRepository = GitHubRepository();
  User user;
  List<UserRepos> userRepos = [];
  List<UserStarred> userStarred = [];
  List<UserRepos> listUserReposFiltered = <UserRepos>[];
  List<UserStarred> listUserStarredFiltered = <UserStarred>[];
  String errorMsg;

  Future<void> getUser() async {
    _startLoading();
    try {
      user = await gitHubRepository.getUserData();
    } on Exception catch (e) {
      errorMsg = getMessageByException(e);
    } finally {
      _finishLoading();
    }
  }

  Future<void> getUserRepos() async {
    _startLoading();
    try {
      userRepos = await gitHubRepository.getUserRepos();
      listUserReposFiltered = [...userRepos];
    } on Exception catch (e) {
      errorMsg = getMessageByException(e);
    } finally {
      _finishLoading();
    }
  }

  Future<void> getUserStarred() async {
    _startLoading();
    try {
      userStarred = await gitHubRepository.getUserStarred();
      listUserStarredFiltered = [...userStarred];
    } on Exception catch (e) {
      errorMsg = getMessageByException(e);
    } finally {
      _finishLoading();
    }
  }

  void filterRepos(String query) {
    final listUserReposTemp = <UserRepos>[];
    listUserReposTemp.addAll(userRepos);
    listUserReposFiltered.clear();
    
    if (query.isNotEmpty) {
      final listUserReposFilteredTemp = <UserRepos>[];
      for (var item in listUserReposTemp) {
        if (item.name.toLowerCase().contains(query.toLowerCase())) {
          listUserReposFilteredTemp.add(item);
        }
      }
      listUserReposFiltered.addAll(listUserReposFilteredTemp);
    } else {
      listUserReposFiltered.addAll(userRepos);
    }
    notifyListeners();
  }

  void filterStarred(String query) {
    final listUserStarredTemp = <UserStarred>[];
    listUserStarredTemp.addAll(userStarred);
    listUserStarredFiltered.clear();

    if (query.isNotEmpty) {
      final listUserStarredFilteredTemp = <UserStarred>[];
      for (var item in listUserStarredTemp) {
        if (item.name.toLowerCase().contains(query.toLowerCase())) {
          listUserStarredFilteredTemp.add(item);
        }
      }
      listUserStarredFiltered.addAll(listUserStarredFilteredTemp);
    } else {
      listUserStarredFiltered.addAll(userStarred);
    }
    notifyListeners();
  }

  void _startLoading() {
    isLoading = true;
    notifyListeners();
  }

  void _finishLoading() {
    isLoading = false;
    notifyListeners();
  }
}