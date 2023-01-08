import 'package:flutter/material.dart';
import 'package:naovimagfiroh_20090135_orbitflutter/widgets/teks.dart';

class Tentang extends StatelessWidget {
  const Tentang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orbit Future Academy'),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        width: 10000,
        color: Colors.blueGrey,
        padding: EdgeInsets.all(30),
        child: Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.blueGrey,
          child: Column(
            children: [
              Text(
                " Tentang",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "Naovi Magfiroh",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Image.asset(
                    'assets/img/naovi.jpg',
                  )),
              Container(
                  width: 400,
                  padding: EdgeInsets.only(left: 5, right: 5),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  // decoration: BoxDecoration(border: Border.all(width: 2)),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Teks("Nama : Naovi Magfiroh"),
                      Teks("TTL : Brebes, 29 Noevember 2001"),
                      Teks("Jenis Kelamin : Perempuan"),
                      Teks("Agama : Islam"),
                      Teks(
                          "Alamat : Jl.DR Sarjito No 28 RT 5 RW 3 Gandasuli, Brebes"),
                      Teks(""),
                      Teks("Pendidikan : "),
                      Teks("- SD NEGERI GANDASULI 2 (2008 - 2014)"),
                      Teks("- SMP NEGERI 1 BREBES (2014 - 2017)"),
                      Teks("- SMA NEGERI 2 BREBES (2017 - 2020)"),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
