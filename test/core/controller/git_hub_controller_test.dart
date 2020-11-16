import 'package:flutter_test/flutter_test.dart';
import 'package:gendo_flutter_test/core/controller/git_hub_controller.dart';
import 'package:gendo_flutter_test/core/exception/exceptions.dart';
import 'package:gendo_flutter_test/core/model/models.dart';
import 'package:gendo_flutter_test/core/model/user.dart';
import 'package:mockito/mockito.dart';

import '../../data/data.dart';
import '../../mocks.dart';

void main() {
  GitHubController controller;
  MockGitHubRepository mockGitHubRepository;

  group('GitHubController tests', () {
    setUp(() {
      mockGitHubRepository = MockGitHubRepository();
      controller = GitHubController(
        repository: mockGitHubRepository,
      );
    });

    test('should throw assert exception when no repository is given', () {
      expect(() => GitHubController(repository: null), throwsAssertionError);
    });

    group('getUser', () {
      test('should get a user when repository does not throw exception',
          () async {
        when(mockGitHubRepository.getUserData())
            .thenAnswer((_) => Future.value(User()));
        await controller.getUser();
        expect(controller.user, isNotNull);
      });

      test('should have errorMsg and user equals null when theres an exception',
          () async {
        when(mockGitHubRepository.getUserData()).thenThrow(Exception());
        await controller.getUser();
        expect(controller.user, isNull);
        expect(controller.errorMsg, 'Erro desconhecido.');
      });

      test(
          '''should have errorMsg and user equals null when theres an github api exception''',
          () async {
        when(mockGitHubRepository.getUserData())
            .thenThrow(GitHubApiException());
        await controller.getUser();
        expect(controller.user, isNull);
        expect(controller.errorMsg, '''API do GitHub retornou erro.
    Talvez você tenha expirado o número de requisições.''');
      });

      test(
          '''should have errorMsg and user equals null when theres an network exception''',
          () async {
        when(mockGitHubRepository.getUserData()).thenThrow(NetworkException());
        await controller.getUser();
        expect(controller.user, isNull);
        expect(controller.errorMsg,
            '''Erro de conexão. Talvez você esteja offline.''');
      });
    });

    group('getUserRepos', () {
      test('should get all user repos when repository does not throw exception',
          () async {
        when(mockGitHubRepository.getUserRepos()).thenAnswer(
          (_) => Future.value(
            [
              UserRepos(
                owner: Owner(
                  id: 1,
                ),
              ),
              UserRepos(
                license: License(
                  key: '1',
                ),
              ),
            ],
          ),
        );
        await controller.getUserRepos();
        expect(controller.userRepos, isNotEmpty);
      });

      test('should populate listUserReposFiltered with the same userRepos',
          () async {
        when(mockGitHubRepository.getUserRepos()).thenAnswer(
          (_) => Future.value(
            [
              UserRepos(),
              UserRepos(),
            ],
          ),
        );
        await controller.getUserRepos();
        expect(controller.userRepos, isNotEmpty);
        expect(controller.listUserReposFiltered, isNotEmpty);
        expect(
          controller.listUserReposFiltered.length,
          controller.userRepos.length,
        );
      });

      test('should have errorMsg and user equals null when theres an exception',
          () async {
        when(mockGitHubRepository.getUserRepos()).thenThrow(Exception());
        await controller.getUserRepos();
        expect(controller.userRepos, isEmpty);
        expect(controller.listUserReposFiltered, isEmpty);
        expect(controller.errorMsg, 'Erro desconhecido.');
      });

      test(
          '''should have errorMsg and user equals null when theres an github api exception''',
          () async {
        when(mockGitHubRepository.getUserRepos())
            .thenThrow(GitHubApiException());
        await controller.getUserRepos();
        expect(controller.userRepos, isEmpty);
        expect(controller.listUserReposFiltered, isEmpty);
        expect(controller.errorMsg, '''API do GitHub retornou erro.
    Talvez você tenha expirado o número de requisições.''');
      });

      test(
          '''should have errorMsg and user equals null when theres an network exception''',
          () async {
        when(mockGitHubRepository.getUserRepos()).thenThrow(NetworkException());
        await controller.getUserRepos();
        expect(controller.userRepos, isEmpty);
        expect(controller.listUserReposFiltered, isEmpty);
        expect(controller.errorMsg,
            '''Erro de conexão. Talvez você esteja offline.''');
      });
    });

    group('getUserStarred', () {
      test(
          '''should get user starred repos when repository does not throw exception''',
          () async {
        when(mockGitHubRepository.getUserStarred()).thenAnswer(
          (_) => Future.value(
            [
              UserStarred(),
              UserStarred(),
            ],
          ),
        );
        await controller.getUserStarred();
        expect(controller.userStarred, isNotEmpty);
      });

      test('should populate listUserStarredFiltered with the same userRepos',
          () async {
        when(mockGitHubRepository.getUserStarred()).thenAnswer(
          (_) => Future.value(
            [
              UserStarred(),
              UserStarred(),
            ],
          ),
        );
        await controller.getUserStarred();
        expect(controller.userStarred, isNotEmpty);
        expect(controller.listUserStarredFiltered, isNotEmpty);
        expect(
          controller.listUserStarredFiltered.length,
          controller.userStarred.length,
        );
      });

      test('should have errorMsg and user equals null when theres an exception',
          () async {
        when(mockGitHubRepository.getUserStarred()).thenThrow(Exception());
        await controller.getUserStarred();
        expect(controller.errorMsg, 'Erro desconhecido.');
      });

      test(
          '''should have errorMsg and user equals null when theres an github api exception''',
          () async {
        when(mockGitHubRepository.getUserStarred())
            .thenThrow(GitHubApiException());
        await controller.getUserStarred();
        expect(controller.errorMsg, '''API do GitHub retornou erro.
    Talvez você tenha expirado o número de requisições.''');
      });

      test(
          '''should have errorMsg and user equals null when theres an network exception''',
          () async {
        when(mockGitHubRepository.getUserStarred())
            .thenThrow(NetworkException());
        await controller.getUserStarred();
        expect(controller.errorMsg,
            '''Erro de conexão. Talvez você esteja offline.''');
      });
    });

    group('filterRepos tests', () {
      test('should filter repos that matches query', () {
        controller.userRepos = mockRepos;
        controller.filterRepos('flutt');
        expect(controller.listUserReposFiltered.length, 1);
        expect(controller.listUserReposFiltered[0].name, 'flutter is great');
      });

      test('should bring no repo when query does not match anything', () {
        controller.userRepos = mockRepos;
        controller.filterRepos('strange');
        expect(controller.listUserReposFiltered, isEmpty);
      });

      test('if query is empty should bring all user repos', () {
        controller.userRepos = mockRepos;
        controller.filterRepos('');
        expect(
          controller.listUserReposFiltered.length,
          controller.userRepos.length,
        );
      });
    });

    group('filterStarred tests', () {
      test('should filter starred repos that matches query', () {
        controller.userStarred = mockStarredRepos;
        controller.filterStarred('here');
        expect(controller.listUserStarredFiltered.length, 1);
        expect(controller.listUserStarredFiltered[0].name, 'here i am');
      });

      test('should bring no starred repo when query does not match anything',
          () {
        controller.userStarred = mockStarredRepos;
        controller.filterStarred('strange');
        expect(controller.listUserStarredFiltered, isEmpty);
      });

      test('if query is empty should bring all starred repos', () {
        controller.userStarred = mockStarredRepos;
        controller.filterStarred('');
        expect(
          controller.listUserStarredFiltered.length,
          controller.userStarred.length,
        );
      });
    });
  });
}