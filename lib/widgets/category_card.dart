import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color color;
  final String name;
  const CategoryCard({super.key, required this.color, required this.name});

  // Dışarıdan alınan kategori modeli rengi ve ismi ile bu kartta kullanılmalı.
  // onTap aksiyonu, dışardan aldığı fonksiyonu haberdar etmeli.
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint("$name tıklandı");
      },
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color.withOpacity(0.3)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(32)),
        padding: const EdgeInsets.all(32),
        child: Text(name),
      ),
    );
  }
}
