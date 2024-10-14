import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Toko Roti',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('Aplikasi ini dibuat untuk membantu Anda membeli roti secara online.'),
            SizedBox(height: 16),
            Text('Developer: Nama Anda'),
            // Tambahkan informasi lainnya jika diperlukan
          ],
        ),
      ),
    );
  }
}
