import 'package:flutter/material.dart';
import 'package:mytsel/app/pulsa/isipulsa.dart';


class KuotaDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kuota'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kuota Internet',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 4, // Tinggi bayangan kartu
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pulsa',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Sisa 34.000',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Berlaku sampai 31 Desember 2023',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 4, // Tinggi bayangan kartu
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Paket Aktif',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Sisa 5 GB',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Berlaku sampai 31 Desember 2023',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kuota Midnight',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Sisa 2 GB',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Berlaku pukul 00:00 - 06:00',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TransactionPage()),
            );
          },
              child: Text('Top-up Kuota'),
            ),
          ],
        ),
      ),
    );
  }
}
