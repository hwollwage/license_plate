import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/app_widgets.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.onScanAgain});
  final VoidCallback onScanAgain;
  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.fromLTRB(22, 18, 22, 28),
    children: [
      const AppTopBar(
        title: 'Hasil deteksi',
        subtitle: 'Pemindaian berhasil diselesaikan',
      ),
      const SizedBox(height: 22),
      Container(
        height: 180,
        decoration: BoxDecoration(
          color: panel,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Icon(
              Icons.directions_car_filled_rounded,
              size: 150,
              color: Color(0xFF30383D),
            ),
            Positioned(
              bottom: 38,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 9,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF111416),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: lime, width: 2),
                ),
                child: const Text(
                  '— — — —',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 20),
      const Text(
        'NOMOR KENDARAAN',
        style: TextStyle(
          color: muted,
          fontSize: 11,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.5,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: panel,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white.withOpacity(.06)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  '— — — —',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                  ),
                ),
                Spacer(),
                Icon(Icons.check_circle, color: lime),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(color: Color(0xFF2C3236)),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.location_on_outlined, color: lime, size: 20),
                const SizedBox(width: 8),
                const Text(
                  'Wilayah registrasi',
                  style: TextStyle(color: muted, fontSize: 13),
                ),
                const Spacer(),
                const Text(
                  'Belum tersedia',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
      ),
      const SizedBox(height: 18),
      const Row(
        children: [
          Text(
            'Detail proses',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          Spacer(),
          AppPill(label: 'SELESAI'),
        ],
      ),
      const SizedBox(height: 12),
      const ProcessRow(
        icon: Icons.crop_free,
        text: 'Plat terdeteksi',
        value: 'Sukses',
      ),
      const ProcessRow(
        icon: Icons.segment,
        text: 'Karakter dikenali',
        value: 'Menunggu gambar',
      ),
      const ProcessRow(
        icon: Icons.location_searching,
        text: 'Kode wilayah',
        value: 'Belum tersedia',
      ),
      const SizedBox(height: 24),
      SizedBox(
        width: double.infinity,
        child: FilledButton.icon(
          onPressed: onScanAgain,
          icon: const Icon(Icons.refresh_rounded),
          label: const Text('Scan lagi'),
          style: FilledButton.styleFrom(
            backgroundColor: lime,
            foregroundColor: ink,
            padding: const EdgeInsets.symmetric(vertical: 15),
            textStyle: const TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
      ),
    ],
  );
}
