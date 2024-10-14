import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Roti Tawar',
      'price': 15000,
      'image': 'assets/roti_tawar.jpg', // Ganti dengan path gambar Anda
    },
    {
      'name': 'Roti Croissant',
      'price': 20000,
      'image': 'assets/roti_croissant.jpg',
    },
    // Tambahkan produk lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk Roti'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  products[index]['image'],
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    products[index]['name'],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Rp ${products[index]['price']}'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/detail', arguments: products[index]);
                  },
                  child: Text('Detail'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
