import 'package:flutter/material.dart';

class _InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
      ),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah pesan yang Anda inginkan
        itemBuilder: (context, index) {
          // Ganti kode ini dengan data pesan sesuai kebutuhan Anda
          // Contoh: ambil data pesan dari database atau daftar pesan palsu
          String sender = 'Pengirim $index';
          String subject = 'Subjek Pesan $index';
          String message = 'Isi pesan ke-$index';

          return ListTile(
            leading: Icon(Icons.mail),
            title: Text(sender),
            subtitle: Text(subject),
            onTap: () {
              // Tambahkan logika ketika pesan diklik
              // Misalnya, tampilkan pesan atau navigasi ke halaman detail pesan
            },
          );
        },
      ),
    );
  }
}