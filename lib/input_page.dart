import 'package:flutter/material.dart';
import 'package:posttest_4/result_page.dart'; // import untuk mengakses halaman result_page

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String selectedJenis = ''; // data inputan jenis yang dipilih, console atau pc
  String selectedPlatform = ''; // data inputan tipe dari tiap platform yang telah dipilih
  TextEditingController namaPemesan = TextEditingController(); // data inputan untuk nama pemesan
  TextEditingController alamatPemesan = TextEditingController(); // data inputan untuk alamat pemesan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: double.infinity, // width mengikuti size layar
              height: 110,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                  ),
                  Text('PC & Console Store Nopal',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                    textAlign: TextAlign.left),
                ],
              ),
              decoration: BoxDecoration(color: Color(0xff071f43))),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      // inputan textfield nama pemesan
                      controller: namaPemesan,
                      decoration: InputDecoration(
                        labelText: 'Nama Pemesan',
                        hintText: 'Masukkan Nama...',
                        labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      // inputan textfield alamat pemesan
                      controller: alamatPemesan,
                      decoration: InputDecoration(
                        labelText: 'Alamat Pemesan',
                        hintText: 'Masukkan Alamat...',
                        labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        _showtipePS5(); // menampilkan opsi pilihan tipe ps 5 ketika elevated button ditekan
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        minimumSize: Size(double.infinity, 150),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Playstation 5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/ps5.png',
                                width: 150.0,
                                height: 150.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 45),
                    ElevatedButton(
                      onPressed: () {
                        _showtipePS4(); // menampilkan opsi pilihan tipe ps 4 ketika elevated button ditekan
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        minimumSize: Size(double.infinity, 150),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Playstation 4',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/ps4.png',
                                width: 150.0,
                                height: 150.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 45),
                    ElevatedButton(
                      onPressed: () {
                        _showmerkPC(); // menampilkan opsi pilihan merk pc gaming ketika elevated button ditekan
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        minimumSize: Size(double.infinity, 150),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'PC Gaming',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/pc.png',
                                width: 150.0,
                                height: 150.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 45),
                    ElevatedButton(
                      onPressed: () {
                        _showHandheld(); // menampilkan opsi pilihan handheld console ketika elevated button ditekan
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        minimumSize: Size(double.infinity, 150),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Handheld',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/handheld.png',
                                width: 150.0,
                                height: 150.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            elevation: 0,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            minimumSize: Size(100, 50),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('PESANAN DITERIMA!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // navigasi untuk menutup pop up box dan kembali ke halaman utama
                                      },
                                      child: Text('Tutup'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text('Input Data'),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            elevation: 0,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            minimumSize: Size(100, 50),
                          ),
                          onPressed: () {
                            // navigasi ke halaman result_page.dart dengan data yang dimasukkan
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ResultPage(
                                  // deklarasi data inputan agar dapat mengeluarkan output ketika telah terjadi perpindahan halaman page
                                  nama: namaPemesan.text,
                                  alamat: alamatPemesan.text,
                                  platform: selectedPlatform,
                                  jenis: selectedJenis,
                                ),
                              ),
                            );
                          },
                          child: Text('Show Data'), // isi text dari elevated button
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showmerkPC() {
    // void untuk menampilkan tipe dari pc gaming
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pilih Merk PC'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile(
                title: Text('MSI'),
                value: 'PC GAMING',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'MSI KATANA';
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile(
                title: Text('ASUS'),
                value: 'PC GAMING',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'ASUS TUF GAMING';
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile(
                title: Text('ACER'),
                value: 'PC GAMING',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'ACER PREDATOR';
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showtipePS5() {
    // void untuk menampilkan tipe dari ps 5
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pilih Tipe PS5'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile(
                title: Text('PRO'),
                value: 'Console - Playstation',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'PS 5 Pro';
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile(
                title: Text('SLIM'),
                value: 'Console - Playstation',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'PS 5 SLIM';
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile(
                title: Text('FAT'),
                value: 'Console - Playstation',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'PS 5 FAT';
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showtipePS4() {
    // void untuk menampilkan tipe dari ps 4
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pilih Tipe PS 4'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile(
                title: Text('PRO'),
                value: 'Console - Playstation',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'PS 4 Pro';
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile(
                title: Text('SLIM'),
                value: 'Console - Playstation',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'PS 4 SLIM';
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile(
                title: Text('FAT'),
                value: 'Console - Playstation',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'PS 4 FAT';
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showHandheld() {
    // void untuk menampilkan tipe dari handheld console
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pilih Device Handheld'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile(
                title: Text('Nintendo Switch'),
                value: 'Console - Handheld',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'NINTENDO SWITCH';
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile(
                title: Text('Steam Deck'),
                value: 'Console - Handheld',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'STEAM DECK';
                  });
                  Navigator.of(context).pop();
                },
              ),
              RadioListTile(
                title: Text('PSP'),
                value: 'Console - Handheld',
                groupValue: selectedPlatform,
                onChanged: (value) {
                  setState(() {
                    selectedPlatform = value as String;
                    selectedJenis = 'PSP';
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
