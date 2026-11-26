import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/app_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.onScan, required this.onHistory});

  final VoidCallback onScan;
  final VoidCallback onHistory;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(22, 18, 22, 28),
      children: [
        Row(
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: lime,
                borderRadius: BorderRadius.circular(14),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/platewise_logo.png',
                  width: 42,
                  height: 42,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 11),
            const Text(
              'platewise',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
            ),
            const Spacer(),
            IconButton(
              onPressed: onHistory,
              icon: const Icon(Icons.history_rounded, color: muted),
            ),
          ],
        ),
        const SizedBox(height: 34),
        const Text(
          'KENALI KENDARAAN',
          style: TextStyle(
            color: lime,
            fontSize: 11,
            fontWeight: FontWeight.w800,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Plat terbaca.\nPerjalanan lebih mudah.',
          style: TextStyle(
            fontSize: 34,
            height: 1.12,
            fontWeight: FontWeight.w800,
            letterSpacing: -1.1,
          ),
        ),
        const SizedBox(height: 14),
        const Text(
          'Pindai nomor kendaraan dan temukan informasi wilayahnya dalam beberapa detik.',
          style: TextStyle(color: muted, fontSize: 14, height: 1.6),
        ),
        const SizedBox(height: 26),
        _ScanCard(onTap: onScan),
        const SizedBox(height: 26),
        const Row(),
      ],
    );
  }
}

class _ScanCard extends StatelessWidget {
  const _ScanCard({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF202920), Color(0xFF141A16)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: lime.withOpacity(.18)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: lime.withOpacity(.12),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(
                  Icons.directions_car_filled_rounded,
                  color: lime,
                ),
              ),
              const Spacer(),
              const AppPill(label: 'AI DETECTION'),
            ],
          ),
          const SizedBox(height: 30),
          const Text(
            'Siap untuk scan?',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 7),
          const Text(
            'Arahkan kamera ke plat kendaraan.',
            style: TextStyle(color: muted, fontSize: 13),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: onTap,
              icon: const Icon(Icons.center_focus_strong_rounded),
              label: const Text('Mulai scan'),
              style: FilledButton.styleFrom(
                backgroundColor: lime,
                foregroundColor: ink,
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
