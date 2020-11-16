# Teste para vaga dev. Flutter na Gendo

## Instruções para instalação e execução
Após instalar o Flutter e rodar o emulador, basta baixar o repositório em seu workspace e na raíz do app, executar:

```flutter pub get```

```flutter run```

## Teste
Foi criado um diretório scripts na raiz do projeto que está configurado pra rodar os testes e gerar um arquivo de cobertura de código. Para executar o script, entre no diretório scripts, dê permissão de execução ao arquivo e o execute. Após ser executado, será gerado um diretório chamado coverage com as informações de cobertura.

Foram criados testes dos controllers, repositories, exceptions e models, atingindo uma cobertura de 100% para esses casos.

## Extras
Alguns pontos extras que apliquei no app:
1. Dark mode, a partir do modo escolhido no SO do usuário;
2. Responsive;
3. Splash screen;
4. Launcher icon;
5. Loading animation;
6. O projeto está configurado com o workflow do GitHub. Em cada push, é feito análise, teste e compilação.