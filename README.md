# Contador de Pontos

**Aluno:** Thiago Erik Lima da Silva

**Disciplina:** Desenvolvimento para Dispositivos Móveis I

## Descrição da atividade

Atividade prática de desenvolvimento mobile com Flutter. O objetivo é criar um projeto
Flutter, desenvolver uma interface própria, executar a aplicação em um emulador Android
ou dispositivo físico, versionar o projeto com Git e publicá-lo em um repositório
público no GitHub.

## Sobre a aplicação

O **Contador de Pontos** é um aplicativo simples para marcar pontuação. A tela mostra
a pontuação atual em destaque e botões para aumentar, diminuir ou zerar o valor.
O valor exibido é atualizado na hora a cada interação.

A interface foi construída com os seguintes widgets:

- `MaterialApp` e `Scaffold` como estrutura base
- `AppBar` com o título da aplicação
- `Text` com `TextStyle` para os textos
- `Padding`, `Center`, `Column`, `Row` e `SizedBox` para organizar o layout
- `ElevatedButton` e `TextButton` para as interações
- `StatefulWidget` com `setState` para atualizar a tela

## Funcionalidades

- **+1**: adiciona um ponto
- **-1**: remove um ponto (a pontuação nunca fica negativa)
- **Zerar**: volta a pontuação para 0
- Tema personalizado com `ColorScheme.fromSeed`

## Como executar

### Pré-requisitos

- Flutter SDK instalado (`flutter doctor` sem erros)
- Android Studio com Android SDK
- Emulador Android ou dispositivo físico com depuração USB ativada

### Passos

```bash
git clone https://github.com/ThiagoErik55/meu_app_flutter
cd meu_app_flutter
flutter pub get
flutter run
```
Com o emulador aberto, o comando `flutter run` instala e inicia o app. No VS Code,
também é possível executar pela tecla **F5**.
