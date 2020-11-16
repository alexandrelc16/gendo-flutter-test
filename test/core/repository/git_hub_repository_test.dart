import 'package:flutter_test/flutter_test.dart';
import 'package:gendo_flutter_test/core/exception/exceptions.dart';
import 'package:gendo_flutter_test/core/model/models.dart';
import 'package:gendo_flutter_test/core/model/user.dart';
import 'package:gendo_flutter_test/core/repository/git_hub_repository.dart';
import 'package:mockito/mockito.dart';

import '../../mocks.dart';

void main() {
  GitHubRepository gitHubRepository;
  MockDio mockDio;
  MockResponse mockResponse;

  group('GitHubRepository tests', () {
    setUp(() {
      mockResponse = MockResponse();
      mockDio = MockDio();
      gitHubRepository = GitHubRepository(mockDio);
    });

    group('getUserData', () {
      test('should bring a user type model', () async {
        when(mockDio.get(any)).thenAnswer((_) => Future.value(mockResponse));
        when(mockResponse.statusCode).thenReturn(200);
        when(mockResponse.data).thenReturn(
          User(id: 1).toJson(),
        );
        final user = await gitHubRepository.getUserData();
        expect(user, isA<User>());
      });

      test('should throw GitHubApiException when response is not 200',
          () async {
        when(mockDio.get(any)).thenAnswer((_) => Future.value(mockResponse));
        when(mockResponse.statusCode).thenReturn(403);
        gitHubRepository
            .getUserData()
            .catchError((e) => expect(e, isA<GitHubApiException>()));
      });
    });

    group('getUserRepos', () {
      test('should bring user repos', () async {
        when(mockDio.get(any)).thenAnswer((_) => Future.value(mockResponse));
        when(mockResponse.statusCode).thenReturn(200);
        when(mockResponse.data).thenReturn(
          [
            UserRepos(
              owner: Owner(
                id: 1,
              ),
              license: License(
                key: '1',
              ),
            ).toJson(),
            UserRepos().toJson(),
            UserRepos().toJson(),
          ]
        );
        final userRepos = await gitHubRepository.getUserRepos();
        expect(userRepos, isNotEmpty);
      });

      test('should throw GitHubApiException when response is not 200',
          () async {
        when(mockDio.get(any)).thenAnswer((_) => Future.value(mockResponse));
        when(mockResponse.statusCode).thenReturn(403);
        gitHubRepository
            .getUserRepos()
            .catchError((e) => expect(e, isA<GitHubApiException>()));
      });
    });

    group('getUserStarred', () {
      test('should bring user starred repos', () async {
        when(mockDio.get(any)).thenAnswer((_) => Future.value(mockResponse));
        when(mockResponse.statusCode).thenReturn(200);
        when(mockResponse.data).thenReturn(
          [
            UserStarred(
              owner: Owner(
                id: 1,
              ),
            ).toJson(),
            UserStarred().toJson(),
            UserStarred().toJson(),
          ]
        );
        final userStarredRepos = await gitHubRepository.getUserStarred();
        expect(userStarredRepos, isNotEmpty);
      });

      test('should throw GitHubApiException when response is not 200',
          () async {
        when(mockDio.get(any)).thenAnswer((_) => Future.value(mockResponse));
        when(mockResponse.statusCode).thenReturn(403);
        gitHubRepository
            .getUserStarred()
            .catchError((e) => expect(e, isA<GitHubApiException>()));
      });
    });
  });
}