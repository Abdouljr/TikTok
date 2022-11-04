import 'package:flutter/material.dart';
import 'package:tiktok/pages/profil/inscription/inscription.dart';

class ProfilWidget extends StatelessWidget {
  const ProfilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              'Profil',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset('assets/images/c_profil.png'),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "@nomd'utilisateur",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: const [
                      Text(
                        "37",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Suivis",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Column(
                    children: const [
                      Text(
                        "114",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Abonnée",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: const [
                      Text(
                        "37",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "J'aime",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 150,
          ),
          Column(
            children: const [
              Text(
                "Tout ce que tu veux",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFFF3364D)),
                    padding: MaterialStatePropertyAll(EdgeInsets.all(12))),
                onPressed: () => {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * .95,
                        child: const Center(
                          child: InscriptionWidget(),
                        ),
                      );
                    },
                  ),
                },
                child: const Text(
                  "Connecte-toi ou inscris-toi",
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
