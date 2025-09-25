// "02 Meus Projetos 02,\n ProjetosPage - Tela de Lista de Projetos (Home)",
import 'package:flutter/material.dart';
import 'package:flutter_application_diego_aquila/config/app_colors.dart';
import 'package:flutter_application_diego_aquila/config/app_text_style.dart';

// Tela de Lista de Projetos (Home)
class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

  @override
  State<ProjetosPage> createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColorPages,
      appBar: AppBar(
        title: Text("Meus Projetos", style: AppTextStyle.titleAppBar),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Efeito borboleta", style: AppTextStyle.subtitlePages),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.folder_copy,
                            size: 33,
                            color: Colors.orange,
                          ),
                          SizedBox(width: 14),
                          Text(
                            "Meus Projetos 02,\n ProjetosPage",
                            style: AppTextStyle.titleAppBar.copyWith(
                              fontSize: 18,
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
                        "Meus Projetos 02,\n ProjetosPage",
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
      ),
    );
  }
}
