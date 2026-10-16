import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});
  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  double _weight = 140;
  int _reps = 5;

  @override
  Widget build(BuildContext context) {
    final oneRm = _weight * (1 + _reps / 30.0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Barbell 1RM'),
        actions: [
          IconButton(
            icon: const Icon(Icons.flash_on, color: AppTheme.primaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppTheme.primaryColor.withValues(alpha: 0.35), AppTheme.surfaceColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.4)),
            ),
            child: Column(
              children: [
                const Text('ESTIMATED 1-REP MAX (BRZYCKI)', style: TextStyle(color: Colors.white70, fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
                const SizedBox(height: 10),
                Text('${oneRm.toStringAsFixed(1)} KG', style: const TextStyle(fontSize: 48, fontWeight: FontWeight.w900, color: AppTheme.secondaryColor)),
                const SizedBox(height: 6),
                Text('Based on ${_weight.toStringAsFixed(0)} kg x $_reps reps', style: const TextStyle(color: Colors.white, fontSize: 13)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('Input Working Weight (KG)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Slider(
            value: _weight,
            min: 40,
            max: 300,
            activeColor: AppTheme.primaryColor,
            onChanged: (v) => setState(() => _weight = v),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Reps Completed', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              DropdownButton<int>(
                value: _reps,
                dropdownColor: AppTheme.surfaceColor,
                items: List.generate(10, (i) => i + 1).map((r) => DropdownMenuItem(value: r, child: Text('$r Reps'))).toList(),
                onChanged: (v) => setState(() => _reps = v ?? 1),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _pctRow('95% Max', (oneRm * 0.95).toStringAsFixed(1)),
          _pctRow('90% Max', (oneRm * 0.90).toStringAsFixed(1)),
          _pctRow('80% Max (Hypertrophy)', (oneRm * 0.80).toStringAsFixed(1)),
          _pctRow('70% Max (Volume)', (oneRm * 0.70).toStringAsFixed(1)),
        ],
      ),
    );
  }

  Widget _pctRow(String label, String kg) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.white70)),
          Text('$kg kg', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: AppTheme.secondaryColor)),
        ],
      ),
    );
  }
}

