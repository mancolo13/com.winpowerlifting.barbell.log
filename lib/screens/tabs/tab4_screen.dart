import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Powerlifting Logs')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: const Column(
              children: [
                Text('Total Big 3 Total: 547.5 kg', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                SizedBox(height: 6),
                Text('Wilks Score: 388.4 Points • Advanced Class', style: TextStyle(color: AppTheme.secondaryColor, fontSize: 13)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => RoutingService.openRegistrationUrl(),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.primaryColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            ),
            child: const Text('Unlock RPE Auto-Regulation & Peaking Program', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

