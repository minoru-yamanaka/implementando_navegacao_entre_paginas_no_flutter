// Passo 3: Configurar o main.dart
// Finalmente, ajuste seu arquivo main.dart para iniciar o aplicativo pela MainScreen.
// Se o seu aplicativo deve começar já na tela principal (sem login), o seu main.dart precisa apontar para MainScreen.

import 'package:flutter/material.dart';
import 'package:flutter_application_diego_aquila/main_screen.dart';
import 'package:flutter_application_diego_aquila/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

// add
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // A tela inicial agora é a nossa tela-mãe com a navegação
      // home: const LoginPage(),
      home: const MainScreen(),
    );
  }
}
