import 'package:flutter/material.dart';

class NumeroOuEmail extends StatelessWidget {
  const NumeroOuEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Inscription',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: const [
            Icon(
              Icons.help_outline,
              color: Colors.grey,
            ),
            SizedBox(
              width: 15,
            )
          ],
          iconTheme: const IconThemeData(color: Colors.black),
          bottom: const TabBar(tabs: <Widget>[
            Tab(
              child: Text(
                "N° Telephone",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "Email",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TabBarView(
            children: <Widget>[
              SizedBox(
                child: Column(
                  children: const [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Numéro de Téléphone",
                      ),
                    )
                  ],
                ),
              ),
              const Center(
                child: Text("It's rainy here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
