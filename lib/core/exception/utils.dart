import 'git_hub_api_exception.dart';
import 'network_exception.dart';

String getMessageByException(Exception exception) {
  if (exception is GitHubApiException) {
    return '''API do GitHub retornou erro.
    Talvez você tenha expirado o número de requisições.''';
  } else if (exception is NetworkException) {
    return 'Erro de conexão. Talvez você esteja offline.';
  } else {
    return 'Erro desconhecido.';
  }
}