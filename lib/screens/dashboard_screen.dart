import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Hard-coded sample values for poor air quality
    final double temperature = 28.5;
    final double humidity = 37.5;
    final int rawAQ = 2709;
    final double co2ppm = 14.8;
    final String timestamp = "2025-06-24 15:45:00";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Jiji Safi Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.green[50],
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.directions_run, color: Colors.green[700], size: 36),
                        const SizedBox(width: 12),
                        Text(
                          'Jogger’s Air Quality',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[900],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Icon(Icons.thermostat, color: Colors.red[400], size: 28),
                        const SizedBox(width: 10),
                        Text('Temperature:', style: TextStyle(fontSize: 18)),
                        const Spacer(),
                        Text(
                          '$temperature °C',
                          style: TextStyle(fontSize: 18, color: Colors.red[700], fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.water_drop, color: Colors.blue[400], size: 28),
                        const SizedBox(width: 10),
                        Text('Humidity:', style: TextStyle(fontSize: 18)),
                        const Spacer(),
                        Text(
                          '$humidity %',
                          style: TextStyle(fontSize: 18, color: Colors.blue[700], fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.air, color: Colors.grey[700], size: 28),
                        const SizedBox(width: 10),
                        Text('Raw AQ:', style: TextStyle(fontSize: 18)),
                        const Spacer(),
                        Text(
                          '$rawAQ',
                          style: TextStyle(fontSize: 18, color: Colors.grey[800], fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.cloud, color: Colors.green[400], size: 28),
                        const SizedBox(width: 10),
                        Text('CO₂:', style: TextStyle(fontSize: 18)),
                        const Spacer(),
                        Text(
                          '$co2ppm ppm',
                          style: TextStyle(fontSize: 18, color: Colors.green[700], fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.grey[600], size: 20),
                        const SizedBox(width: 8),
                        Text(
                          'Last updated: $timestamp',
                          style: const TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Icon(
                      co2ppm > 10
                          ? Icons.warning_amber_rounded
                          : Icons.check_circle,
                      color: co2ppm > 10 ? Colors.red : Colors.green,
                      size: 28,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        co2ppm > 10
                            ? "Warning: Poor air quality in this area! Avoid jogging here."
                            : "Air quality is good for jogging in this area.",
                        style: TextStyle(
                          fontSize: 16,
                          color: co2ppm > 10 ? Colors.red[700] : Colors.green[700],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
