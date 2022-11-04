import 'package:flutter/material.dart';

class ConnexionWidget extends StatefulWidget {
  const ConnexionWidget({super.key});

  @override
  State<ConnexionWidget> createState() => _ConnexionWidgetState();
}

class _ConnexionWidgetState extends State<ConnexionWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                // color: Colors.red,
                alignment: Alignment.bottomLeft,

                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    size: 25,
                  ),
                ),
              ),
              const SizedBox(
                width: 260,
              ),
              Container(
                height: 70,
                // color: Colors.red,
                alignment: Alignment.bottomRight,
                child: const Icon(
                  Icons.help_outline,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            // height: 10,
            // color: Colors.blue,
            child: Text(
              "Connecte-toi à TikTok",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            // height: 20,
            width: 350,
            // color: Colors.amber,
            child: Center(
              child: Text(
                "Créer un profil, suivre d'autres comptes, faire vos propres vidéos n et plus.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 300,
            // color: Colors.blue,
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: 320,
                  // color: Colors.amber,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        color: Colors.white,
                        child: const Icon(
                          Icons.person_outline,
                          size: 30,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(
                          width: 100,
                          // color: Colors.green,
                          child: Text(
                            "Utilise numéro ou email",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 320,
                  // color: Colors.amber,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        color: Colors.white,
                        child: Image.asset(
                          "assets/images/logo_facebook.png",
                          height: 23.94,
                          width: 24,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(
                          width: 100,
                          // color: Colors.green,
                          child: Text(
                            "Continue avec facebook",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 320,
                  // color: Colors.amber,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        color: Colors.white,
                        child: Image.asset(
                          "assets/images/logo_google.png",
                          height: 22,
                          width: 22,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(
                          width: 100,
                          // color: Colors.green,
                          child: Text(
                            "Continue avec Google",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 320,
                  // color: Colors.amber,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        color: Colors.white,
                        child: Image.asset(
                          "assets/images/logo_instagram.png",
                          height: 26.39,
                          width: 25,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(
                          width: 100,
                          // color: Colors.green,
                          child: Text(
                            "Continue avec Instagram",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 320,
                  // color: Colors.amber,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        color: Colors.white,
                        child: Image.asset(
                          "assets/images/logo_twitter.png",
                          height: 22,
                          width: 22,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(
                          width: 100,
                          // color: Colors.green,
                          child: Text(
                            "Continue avec Twitter",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            height: 90,
            padding: const EdgeInsets.all(15),
            // color: Colors.amber,
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: "En continuant, vous acceptez les",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                    children: <TextSpan>[
                      TextSpan(
                        text: " conditions d’utilisation",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "de tiktok et confirmez que vous avez lu la",
                      ),
                      TextSpan(
                        text: " politique de confidentialité",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: " de tiktok.",
                      ),
                    ]),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color(0xFFF6F8FA),
              width: 600,
              alignment: Alignment.center,
              child: GestureDetector(
                child: Wrap(
                  children: [
                    const Text("Tu n'as pas un compte ? ",
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                    GestureDetector(
                      child: const Text(
                        'Inscription',
                        style: TextStyle(
                            color: Color(0xFFC64169),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
