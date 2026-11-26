import 'package:flutter/material.dart';

import 'screens/history_page.dart';
import 'screens/home_page.dart';
import 'screens/result_page.dart';
import 'screens/scan_page.dart';
import 'theme/app_colors.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _tab = 0;

  void _startScan() => setState(() => _tab = 1);
  void _showResult() => setState(() => _tab = 2);

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(onScan: _startScan, onHistory: () => setState(() => _tab = 3)),
      ScanPage(onResult: _showResult),
      ResultPage(onScanAgain: _startScan),
      HistoryPage(onOpen: _showResult),
    ];

    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: _tab, children: pages),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFF101315),
        indicatorColor: lime.withOpacity(.15),
        selectedIndex: _tab == 0 ? 0 : (_tab == 1 ? 1 : 2),
        onDestinationSelected: (value) =>
            setState(() => _tab = value == 2 ? 3 : value),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home_rounded),
            label: 'Beranda',
          ),
          NavigationDestination(
            icon: Icon(Icons.document_scanner_outlined),
            selectedIcon: Icon(Icons.document_scanner_rounded),
            label: 'Scan',
          ),
          NavigationDestination(
            icon: Icon(Icons.history_rounded),
            label: 'Riwayat',
          ),
        ],
      ),
    );
  }
}
