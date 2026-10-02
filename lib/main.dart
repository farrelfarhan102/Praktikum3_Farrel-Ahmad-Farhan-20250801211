import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Tugas Layout Flutter',

      theme: ThemeData(
        // NIM terakhir = 1 (GANJIL)
        // Maka menggunakan warna pastel hijau/toska muda
        scaffoldBackgroundColor:
        Colors.tealAccent[100],

        useMaterial3: true,
      ),

      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Profil Praktikan',
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      body: const Center(
        child: ProfileCard(
          nama: 'Farrel Ahmad Farhan',
          nim: '20250801211',
          hobi: 'Coding dan Desain',

          // Berdasarkan rumus:
          // 11 + 50 = 61
          skorAktivitas: 61,
        ),
      ),
    );
  }
}