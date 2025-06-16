import 'package:flutter/material.dart';
import '../widgets/air_quality_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jiji Safi"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AirQualityCard(
              pm25: 28.4,
              co: 0.6,
              voc: 98.2,
              status: 'Moderate',
            ),
            const SizedBox(height: 20),
            const Text(
              'Jog safely. Air quality updates every 30 seconds.',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
