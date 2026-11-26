import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/app_widgets.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key, required this.onResult});
  final VoidCallback onResult;
  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.fromLTRB(22, 18, 22, 24),
    children: [
      AppTopBar(
        title: 'Scan plat',
        subtitle: 'Ambil atau pilih foto kendaraan',
      ),
      const SizedBox(height: 24),
      Container(
        height: 350,
        decoration: BoxDecoration(
          color: panel,
          borderRadius: BorderRadius.circular(26),
          border: Border.all(color: Colors.white.withOpacity(.08)),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Positioned(
              top: 34,
              child: Icon(
                Icons.directions_car_filled_rounded,
                size: 170,
                color: Color(0xFF283036),
              ),
            ),
            Positioned(
              top: 208,
              child: Container(
                width: 232,
                height: 72,
                decoration: BoxDecoration(
                  color: const Color(0xFF252B2F),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: lime, width: 2),
                ),
                child: const Center(
                  child: Text(
                    'B 1234 XYZ',
                    style: TextStyle(
                      fontSize: 24,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: CustomPaint(painter: CornerPainter()),
              ),
            ),
            const Positioned(
              bottom: 20,
              child: Text(
                'Contoh area pemindaian',
                style: TextStyle(color: muted, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 14),
      const Center(
        child: Text(
          'Pastikan plat terlihat jelas dan tidak buram.',
          style: TextStyle(color: muted, fontSize: 12),
        ),
      ),
      const SizedBox(height: 22),
      Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () => _showDemo(context),
              icon: const Icon(Icons.photo_library_outlined),
              label: const Text('Galeri'),
              style: _outlineStyle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: FilledButton.icon(
              onPressed: () => _showDemo(context),
              icon: const Icon(Icons.camera_alt_outlined),
              label: const Text('Kamera'),
              style: FilledButton.styleFrom(
                backgroundColor: lime,
                foregroundColor: ink,
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 14),
      SizedBox(
        width: double.infinity,
        child: TextButton(
          onPressed: onResult,
          child: const Text(
            'Lihat contoh hasil →',
            style: TextStyle(color: lime),
          ),
        ),
      ),
    ],
  );

  static const _outlineStyle = ButtonStyle(
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    side: WidgetStatePropertyAll(BorderSide(color: Color(0xFF353B3F))),
    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 15)),
  );
  static void _showDemo(BuildContext context) => ScaffoldMessenger.of(context)
      .showSnackBar(
        const SnackBar(
          content: Text(
            'Integrasi kamera dan galeri bisa ditambahkan setelah UI.',
          ),
        ),
      );
}
