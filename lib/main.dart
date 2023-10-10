import 'package:flutter/material.dart';
import 'input_page.dart'; // import untuk mengakses halaman input_page

void main() => runApp(MyAppBar());

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PC & Console Store',
      home: InputPage(), //mengambil inputpage sebagai halaman utama ketika aplikasi berjalan
      debugShowCheckedModeBanner: false,
    );
  }
}