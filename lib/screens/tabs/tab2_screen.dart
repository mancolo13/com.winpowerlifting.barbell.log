import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Plate Math Helper')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(18)),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Target: 140 kg (Olympic 20kg Bar)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 12),
                Text('Load per side: 60 kg\n• 2x 25 kg (Red Plates)\n• 1x 10 kg (Green Plate)', style: TextStyle(color: AppTheme.secondaryColor, height: 1.5, fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

