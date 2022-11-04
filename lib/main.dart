import 'package:flutter/material.dart';
import 'package:tiktok/pages/ajouter/ajouter.dart';
import 'package:tiktok/pages/commentaire/commentaire.dart';
import 'package:tiktok/pages/home/home.dart';
import 'package:tiktok/pages/profil/profil.dart';
import 'package:tiktok/pages/recherche/recherche.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TiKODC',
      debugShowCheckedModeBanner: false,
      home: Mystatefullwidget(),
    );
  }
}

class Mystatefullwidget extends StatefulWidget {
  const Mystatefullwidget({super.key});

  @override
  State<Mystatefullwidget> createState() => _MystatefullwidgetState();
}

class _MystatefullwidgetState extends State<Mystatefullwidget> {
  final PageController _controllerPage = PageController(initialPage: 0);
  int indexCourant = 0;

  @override
  void dispose() {
    _controllerPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            indexCourant = index;
          });
        },
        controller: _controllerPage,
        children: [
          HomePage(),
          const RechercheWidget(),
          const AjouterWidget(),
          const CommentaireWidget(),
          const ProfilWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color(0xFF141518),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: indexCourant,
        onTap: (index) {
          setState(() {
            indexCourant = index;
          });
          _controllerPage.jumpToPage(indexCourant);
        },
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.bolt,
              size: 30,
            ),
            label: 'Recherche',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/tiktok_add.png',
              height: 28,
            ),
            label: 'Ajouter',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.comment_outlined),
            label: 'Commentaire',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
