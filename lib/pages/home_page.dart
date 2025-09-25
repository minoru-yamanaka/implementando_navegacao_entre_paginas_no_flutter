// lib/pages/home_page.dart (ou onde sua MyHomePage está)
// Como a MyHomePage.dart deve ficar (a versão "limpa"):

// Agora, sua MyHomePage é apenas um "pedaço" de interface que pode ser encaixado em qualquer lugar.

import 'package:flutter/material.dart';
import 'package:flutter_application_diego_aquila/config/app_colors.dart';
import 'package:flutter_application_diego_aquila/config/app_text_style.dart';

// ESTA É A VERSÃO CORRETA DA SUA PÁGINA DE CONTEÚDO
class MyHomePage extends StatelessWidget {
  // Pode até ser StatelessWidget se não tiver estado
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // SEM Scaffold ou AppBar. Retorne apenas o widget principal do seu conteúdo.
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Efeito borboleta", style: AppTextStyle.subtitlePages),
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Icon(Icons.folder_copy, size: 33, color: Colors.orange),
                        SizedBox(width: 14),
                        Text(
                          "Página Inicial 01,\nMyHomePage",
                          style: AppTextStyle.titleAppBar.copyWith(
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 45,
                      right: 25,
                      top: 10,
                    ),
                    child: Text(
                      "Página Inicial 01,\nMyHomePage",
                      style: AppTextStyle.subtitlePages.copyWith(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.orange,
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Ver projeto"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Resumindo a Lógica
// Você chama a MainScreen como sua tela principal (após o login, por exemplo).

// A MainScreen cria a estrutura com Scaffold, AppBar e a BottomNavigationBar.

// No body da MainScreen, ela exibe o widget que está na posição _selectedIndex da lista _widgetOptions.

// Como MyHomePage está na posição 0, ela será exibida por padrão, já "vestida" com a NavBar e a AppBar da MainScreen.
