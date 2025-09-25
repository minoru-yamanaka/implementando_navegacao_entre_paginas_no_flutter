# 📱 Implementando Navegação entre Páginas no Flutter para a UC13 - Desenvolvimento Mobile

Instruções:
Implementar a navegação entre as 3 telas já desenvolvidas no app, permitindo que o usuário transite entre elas usando técnicas de navegação do Flutter.

Mais informações dio desafio no link:
https://www.notion.so/diegoaquila/Atividade-Implementando-Navega-o-entre-P-ginas-no-Flutter-2786823964e7805191b3de6bb45ec04b


## 📱 Projeto de Portfólio em Flutter

Este é um projeto de aplicativo móvel desenvolvido em Flutter que serve como um template inicial para um portfólio de desenvolvedor. Ele inclui uma estrutura de navegação básica com tela de login e páginas principais.

## ✨ Telas Principais

O aplicativo é composto pelas seguintes telas:

| Tela de Login | Projetos (Home) | Perfil | Menssagem | Sair
| :---: |:---:|:---:|:---:|:---:
|![img\login.png](img\login.png)|![img\homep.png](img/homep.png)|![img\perfil.png](img\perfil.png)| ![img\mensagem.png](img\mensagem.png)|![img\sair.png](img\mensagem.png)

*Observação: As imagens acima são representações baseadas na estrutura do código. A tela de "Mensagens" é atualmente um placeholder.*

## 🚀 Funcionalidades

  - **Tela de Autenticação:** Uma página de login simples que redireciona para a tela principal do aplicativo.
  - **Navegação Principal:** Utiliza um `BottomNavigationBar` para alternar facilmente entre as seções: Home (Projetos), Perfil, uma tela vazia e Sair.
  - **Estrutura de Páginas:** Telas pré-definidas para "Projetos" e "Perfil", prontas para serem preenchidas com conteúdo dinâmico.
  - **Função de Saída:** Uma tela de "Sair" que permite ao usuário retornar à tela de login.
  - **Interface Coesa:** O design utiliza estilos e cores centralizados para manter a consistência visual em todo o aplicativo.

## 🛠️ Tecnologias Utilizadas

  - **[Flutter](https://flutter.dev/):** Framework principal para o desenvolvimento da UI multiplataforma.
  - **[Dart](https://dart.dev/):** Linguagem de programação utilizada pelo Flutter.
  - **[Material Design](https://material.io/):** Componentes e diretrizes de design para uma experiência de usuário consistente.

## ▶️ Como Executar o Projeto

Siga os passos abaixo para executar o projeto em sua máquina local.

**Pré-requisitos:**

  - Ter o [Git](https://git-scm.com/) instalado.
  - Ter o [SDK do Flutter](https://flutter.dev/docs/get-started/install) configurado em sua máquina.

**Passo a passo:**

1.  **Clone o repositório:**

    ```sh
    git clone https://github.com/seu-usuario/nome-do-repositorio.git
    ```

2.  **Navegue até o diretório do projeto:**

    ```sh
    cd nome-do-repositorio
    ```

3.  **Instale as dependências:**

    ```sh
    flutter pub get
    ```

4.  **Execute o aplicativo:**

    ```sh
    flutter run
    ```

    O aplicativo deverá ser compilado e executado em seu emulador ou dispositivo físico conectado.

## 📂 Estrutura de Arquivos

A estrutura de arquivos foi organizada para separar a lógica das telas e as configurações de UI, facilitando a manutenção.

```
lib/
├── app.dart                  # Widget principal (MaterialApp) e configuração do tema
├── main.dart                 # Ponto de entrada da aplicação
│
└── pages/
    ├── login_page.dart         # Tela de login
    │
    ├── config/
    │   ├── main_screen.dart    # Gerencia a navegação principal (BottomNavigationBar)
    │   ├── app_colors.dart     # Definições de cores globais
    │   └── app_text_style.dart # Definições de estilos de texto globais
    │
    ├── projects_page.dart      # Tela que exibe os projetos
    ├── profile_page.dart       # Tela do perfil do usuário
    └── exit_page.dart          # Tela com a função de sair
```

## 📂 **[Changelog.md](/changelog.md)** 