import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = []; // Ganti ini dengan data dari state manajemen Anda

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang'),
      ),
      body: cartItems.isEmpty
          ? Center(child: Text('Keranjang Anda kosong'))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index]['name']),
                  subtitle: Text('Rp ${cartItems[index]['price']}'),
                );
              },
            ),
    );
  }
}
