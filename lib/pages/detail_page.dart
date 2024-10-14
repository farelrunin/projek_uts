import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> product = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product['image'],
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              product['name'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Rp ${product['price']}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            Text('Deskripsi: Roti ini adalah...'), // Tambahkan deskripsi produk
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Logika untuk menambahkan ke keranjang
                // Misalnya, menggunakan Provider atau setState untuk mengelola state
              },
              child: Text('Tambah ke Keranjang'),
            ),
          ],
        ),
      ),
    );
  }
}
