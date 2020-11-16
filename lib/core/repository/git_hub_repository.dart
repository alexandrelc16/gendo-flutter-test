import 'package:dio/dio.dart';

import '../exception/exceptions.dart';
import '../model/user.dart';
import '../model/user_repos.dart';
import '../model/user_starred.dart';
import 'api.dart';

class GitHubRepository {
  GitHubRepository(this.client);

  final Dio client;

  Future<User> getUserData() async {
    try {
      var response = await client.get(gitHubApiUrlBase);

      if (response.statusCode == httpStatusCodeOk) {
        return User.fromJson(response.data);
      } else {
        throw GitHubApiException();
      }
    } on Exception {
      rethrow;
    }
  }

  Future<List<UserRepos>> getUserRepos() async {
    try {
      var response = await client.get('$gitHubApiUrlBase/repos?per_page=100');

      if (response.statusCode == httpStatusCodeOk) {
        final list = response.data as List;
        return List.generate(list.length, (i) => UserRepos.fromJson(list[i]));
      } else {
        throw GitHubApiException();
      }
    } on Exception {
      rethrow;
    }
  }

  Future<List<UserStarred>> getUserStarred() async {
    try {
      var response = await client.get('$gitHubApiUrlBase/starred?per_page=100');

      if (response.statusCode == httpStatusCodeOk) {
        final list = response.data as List;
        return List.generate(list.length, (i) => UserStarred.fromJson(list[i]));
      } else {
        throw GitHubApiException();
      }
    } on Exception {
      rethrow;
    }
  }
}