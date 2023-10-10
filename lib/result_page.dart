import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String nama;
  final String alamat;
  final String platform;
  final String jenis;

  ResultPage({
    required this.nama,
    required this.alamat,
    required this.platform,
    required this.jenis,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff071f43),
        foregroundColor: Colors.white,
        title: Text('PC & Console Store Nopal'),
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Text(
              'YOUR ORDER',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Container(
              // box hitam sbg background
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Nama Pemesan: $nama', // mengambil data inputan nama pemesan
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Alamat Pemesan: $alamat', // mengambil data inputan alamat pemesan
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Jenis Platform: $platform', // mengambil data inputan platform yang dipilih
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Tipe/Merk Platform: $jenis', // mengambil data inputan tipe dari platform yang dipilih
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 75),
            Text(
              'Thank you for your Order!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
