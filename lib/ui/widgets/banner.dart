import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner(this.bannerHeight, {Key? key}) : super(key: key);
  final double bannerHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: bannerHeight,
      child: Image.network(
          "https://static-cse.canva.com/blob/572626/1.magebyRodionKutsaevviaUnsplash.jpg",
          fit: BoxFit.cover),
    );
  }
}

