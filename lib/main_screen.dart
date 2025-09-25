// Passo 2: Criar a Tela-Mãe (main_screen.dart)
// Esta tela irá conter a lógica para exibir a NavBarWidget e trocar as páginas no body.

// lib/main_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_diego_aquila/components/nav_bar_widget.dart'; // <<< IMPORTE A NAVBAR
import 'package:flutter_application_diego_aquila/pages/home_page.dart'; // <<< IMPORTE SUAS PÁGINAS
import 'package:flutter_application_diego_aquila/pages/projetos_page.dart';
import 'package:flutter_application_diego_aquila/pages/login_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // Controla o índice da página ativa

  // Lista das páginas que serão exibidas no body
  static const List<Widget> _widgetOptions = <Widget>[
    MyHomePage(), // Índice 0
    ProjetosPage(), // Índice 1
  ];

  void _onItemTapped(int index) {
    // O item 2 (Login) tem um comportamento especial: navegar para outra tela
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    } else {
      // Para os outros itens, apenas atualizamos o estado para trocar de página
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // O corpo da tela muda de acordo com o índice selecionado
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      // Aqui usamos o nosso componente de navegação
      bottomNavigationBar: NavBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

// O que este código faz?

// Mantém o estado do item selecionado em _selectedIndex.
// Tem uma lista _widgetOptions com as telas que podem ser trocadas (Home e Projetos).
// A função _onItemTapped contém a lógica principal:
// Se o índice for 0 ou 1, ela troca a tela no body.
// Se o índice for 2 (Login), ela navega para a LoginPage usando Navigator.push, cobrindo a tela atual. Isso é ideal para fluxos de autenticação.
// No Scaffold, o body exibe a página correta e o bottomNavigationBar exibe nosso NavBarWidget.
