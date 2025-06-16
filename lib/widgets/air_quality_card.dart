import 'package:flutter/material.dart';

class AirQualityCard extends StatelessWidget {
  final double pm25;
  final double co;
  final double voc;
  final String status;

  const AirQualityCard({
    required this.pm25,
    required this.co,
    required this.voc,
    required this.status,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Air Quality: $status",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const Divider(height: 20, thickness: 1),
            _buildRow("PM2.5", pm25.toStringAsFixed(1), "μg/m³"),
            _buildRow("CO", co.toStringAsFixed(2), "ppm"),
            _buildRow("VOCs", voc.toStringAsFixed(1), "ppb"),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String label, String value, String unit) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16)),
          Text("$value $unit", style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
