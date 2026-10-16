import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final prs = [
      {'lift': 'Back Squat', 'pr': '185.0 kg', 'rpe': 'RPE 9.5'},
      {'lift': 'Barbell Bench Press', 'pr': '137.5 kg', 'rpe': 'RPE 10.0'},
      {'lift': 'Deadlift (Conventional)', 'pr': '225.0 kg', 'rpe': 'RPE 9.0'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Big 3 Personal Records')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: prs.length,
        itemBuilder: (context, i) {
          final item = prs[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['lift']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    Text(item['rpe']!, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                  ],
                ),
                Text(item['pr']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppTheme.secondaryColor)),
              ],
            ),
          );
        },
      ),
    );
  }
}

