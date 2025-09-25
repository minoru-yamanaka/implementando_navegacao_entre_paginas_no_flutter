// Passo 1: Criar o Componente Reutilizável (nav_bar_widget.dart)
// Primeiro, vamos criar o widget da barra de navegação. Ele será simples e customizável.
// lib/components/nav_bar_widget.dart

import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const NavBarWidget({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
        BottomNavigationBarItem(
          icon: Icon(Icons.folder_copy),
          label: 'Projetos',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800], // Cor do item ativo
      unselectedItemColor: Colors.grey, // Cor dos itens inativos
      onTap: onItemTapped,
      type:
          BottomNavigationBarType.fixed, // Garante que todos os itens apareçam
    );
  }
}

// O que este código faz?
// Recebe o selectedIndex para saber qual ícone destacar.
// Recebe uma função onItemTapped para notificar a tela-mãe quando um item for clicado.
// Define os 3 itens da sua navegação: Início, Projetos e Login.
