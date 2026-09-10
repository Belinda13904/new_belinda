import 'package:flutter/material.dart';
import '../style/drawer_style.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Drawer'),
        backgroundColor: Colors.blue,
      ),

      // Menu lateral
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Cabeçalho do Drawer
            DrawerHeader(
              decoration: const BoxDecoration(
                color: DrawerStyles.corCabecalho,
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            // Perfil
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(
                'Perfil',
                style: DrawerStyles.textoItem,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            // Configurações
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(
                'Configurações',
                style: DrawerStyles.textoItem,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          'Deslize a partir da esquerda ou toque no ☰',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}