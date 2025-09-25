import 'package:flutter/material.dart';
import 'package:flutter_application_diego_aquila/pages/exit_page.dart';
import 'package:flutter_application_diego_aquila/pages/profile_page.dart';
import 'package:flutter_application_diego_aquila/pages/projects_page.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // Índice da tela atual (0 = Home, 1 = Perfil, etc.)

  // Lista de telas que serão exibidas
  static const List<Widget> _widgetOptions = <Widget>[
    ProjectsPage(),
    ProfilePage(),
    Text('tela vazia'), // Tela de Mensagens (placeholder)
    ExitPage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        // ADICIONADO: Força o estilo fixo, mantendo o fundo e os labels consistentes.
        type: BottomNavigationBarType.fixed,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'tela vazia'),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: 'Sair'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFF58524), // Cor do ícone ativo

        // ADICIONADO: Define uma cor para os ícones inativos para que fiquem visíveis.
        unselectedItemColor: Colors.grey,

        // OPCIONAL: Adicione uma cor de fundo explícita para a barra, se desejar.
        // backgroundColor: Colors.white,

        onTap: _onItemTapped,
      ),
    );
  }
}