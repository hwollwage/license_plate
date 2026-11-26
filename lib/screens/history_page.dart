import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/app_widgets.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key, required this.onOpen});
  final VoidCallback onOpen;
  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.fromLTRB(22, 18, 22, 24),
    children: [
      const AppTopBar(
        title: 'Riwayat scan',
        subtitle: 'Hasil pemindaian terbaru',
      ),
      const SizedBox(height: 20),
      InkWell(
        onTap: onOpen,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          padding: const EdgeInsets.all(17),
          decoration: BoxDecoration(
            color: panel,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            children: [
              Icon(Icons.directions_car_rounded, color: lime, size: 30),
              SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Belum ada hasil scan',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Riwayat scan akan muncul di sini',
                      style: TextStyle(color: muted, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right_rounded, color: muted),
            ],
          ),
        ),
      ),
    ],
  );
}
