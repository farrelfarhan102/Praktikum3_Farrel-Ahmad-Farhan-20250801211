import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String nama;
  final String nim;
  final String hobi;
  final int skorAktivitas;

  const ProfileCard({
    super.key,
    required this.nama,
    required this.nim,
    required this.hobi,
    required this.skorAktivitas,
  });

  @override
  Widget build(BuildContext context) {
    // NIM: 20250801211
    // Digit ke-2 dari belakang = 1
    // Digit terakhir = 1
    // 2 digit terakhir = 11

    // Rumus:
    // Lebar kartu = 320 + (1 x 5) = 325.0
    // Border radius = 12 + (1 x 1.5) = 13.5
    // Ukuran logo = 60 + (1 x 2) = 62.0
    // Jarak pemisah = 15 + 1 = 16.0
    // Skor aktivitas = 11 + 50 = 61

    const int digitKeduaDariBelakang = 1;
    const int digitTerakhir = 1;
    const int duaDigitTerakhir = 11;

    final double lebarKartu =
        320.0 + (digitKeduaDariBelakang * 5);

    final double radiusKartu =
        12.0 + (digitTerakhir * 1.5);

    final double ukuranLogo =
        60.0 + (digitTerakhir * 2);

    final double jarakPemisah =
        15.0 + digitTerakhir;

    final int skor =
        duaDigitTerakhir + 50;

    return Container(
      width: lebarKartu,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radiusKartu),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.20),
            blurRadius: 10.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          // Header Kartu
          Row(
            children: [

              // Logo Flutter
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                    color: Colors.teal,
                    width: 2.0,
                  ),
                ),
                child: FlutterLogo(
                  size: ukuranLogo,
                ),
              ),

              // Jarak pemisah berdasarkan rumus NIM
              SizedBox(
                width: jarakPemisah,
              ),

              // Judul dan nama
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kartu Praktikan',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),

                    const SizedBox(height: 6.0),

                    Text(
                      nama,
                      style: const TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Pemisah
          const Divider(
            thickness: 1.5,
            height: 30.0,
          ),

          // Detail Identitas
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [

              _detailRow(
                'NIM',
                nim,
              ),

              const SizedBox(height: 10.0),

              _detailRow(
                'Hobi',
                hobi,
              ),

              const SizedBox(height: 10.0),

              _detailRow(
                'Skor Aktivitas',
                '$skor',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _detailRow(
      String label,
      String value,
      ) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 16.0,
        ),
        children: [
          TextSpan(
            text: '$label: ',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: value,
          ),
        ],
      ),
    );
  }
}