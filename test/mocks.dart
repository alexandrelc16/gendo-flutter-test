import 'package:dio/dio.dart';
import 'package:gendo_flutter_test/core/repository/git_hub_repository.dart';
import 'package:mockito/mockito.dart';

class MockGitHubRepository extends Mock implements GitHubRepository {}

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response {}