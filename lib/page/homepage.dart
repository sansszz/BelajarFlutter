import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF59AC46),
        title: const Text(
          "Home Page",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomMenu(
                  imageAssets: "assets/persegi.jpg",
                  title: "persegi",

                ),
              ),

                Expanded(
                  child: CustomMenu(
                    imageAssets: "assets/lingkaran.png",
                    title: "lingkaran",
                  ),
                ),
            ],
          ),

          Row(
            children: [
              Expanded(
                child: CustomMenu(
                  imageAssets: "assets/segitiga.png",
                  title: "Segitiga",

                ),
              ),

              Expanded(
                child: CustomMenu(
                  imageAssets: "assets/persegipanjang.png",
                  title: "Persegi Panjang",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  CustomMenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green.shade200,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAssets, width: 150, height: 200,),
            Text(title),
          ],
        ));
  }
}
