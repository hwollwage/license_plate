import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({required this.title, required this.subtitle});
  final String title, subtitle;
  @override
  Widget build(BuildContext context) => Row(
    children: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: lime.withOpacity(.12),
          borderRadius: BorderRadius.circular(13),
        ),
        child: const Icon(Icons.crop_free_rounded, color: lime),
      ),
      const SizedBox(width: 12),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 3),
          Text(subtitle, style: const TextStyle(color: muted, fontSize: 12)),
        ],
      ),
    ],
  );
}

class StepTile extends StatelessWidget {
  const StepTile({
    required this.number,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  final String number, title, subtitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: panel,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: const Color(0xFF202629),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Icon(icon, color: lime, size: 20),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(color: muted, fontSize: 11),
                ),
              ],
            ),
          ),
          Text(
            number,
            style: const TextStyle(
              color: Color(0xFF51595E),
              fontSize: 12,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    ),
  );
}

class InfoStrip extends StatelessWidget {
  const InfoStrip();
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: const Color(0xFF151C17),
      borderRadius: BorderRadius.circular(16),
    ),
    child: const Row(
      children: [
        Icon(Icons.shield_outlined, color: lime, size: 19),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            'Foto diproses untuk membaca plat kendaraan.',
            style: TextStyle(color: Color(0xFFB7C0B8), fontSize: 12),
          ),
        ),
      ],
    ),
  );
}

class AppPill extends StatelessWidget {
  const AppPill({required this.label});
  final String label;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(
      color: lime.withOpacity(.1),
      borderRadius: BorderRadius.circular(99),
    ),
    child: Text(
      label,
      style: const TextStyle(
        color: lime,
        fontSize: 9,
        fontWeight: FontWeight.w800,
        letterSpacing: 1,
      ),
    ),
  );
}

class ProcessRow extends StatelessWidget {
  const ProcessRow({
    required this.icon,
    required this.text,
    required this.value,
  });
  final IconData icon;
  final String text, value;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      decoration: BoxDecoration(
        color: panel,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(icon, color: muted, size: 18),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(fontSize: 12)),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              color: lime,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    ),
  );
}

class CornerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const color = lime;
    final p = Paint()
      ..color = color
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    const l = 28.0;
    for (final x in [0.0, size.width]) {
      for (final y in [0.0, size.height]) {
        final sx = x == 0 ? 1 : -1;
        final sy = y == 0 ? 1 : -1;
        canvas.drawLine(Offset(x, y), Offset(x + sx * l, y), p);
        canvas.drawLine(Offset(x, y), Offset(x, y + sy * l), p);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
