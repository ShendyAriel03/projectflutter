import 'package:flutter/material.dart';
import 'package:mytsel/app/modules/login/views/login_view.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            color: Colors.blue,
            child: Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile_image.jpg'), // Ganti dengan gambar profil Anda
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Shendy Ariel',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'hddsdvh5@gmail.com', // Ganti dengan alamat email Anda
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text('Nomor Telepon'),
              subtitle: Text('0812-3456-7890'), // Ganti dengan nomor telepon Anda
              trailing: Icon(Icons.edit),
              onTap: () {
                // Tambahkan tindakan untuk mengedit nomor telepon di sini.
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Alamat'),
              subtitle: Text('bebas'), // Ganti dengan alamat Anda
              trailing: Icon(Icons.edit),
              onTap: () {
                // Tambahkan tindakan untuk mengedit alamat di sini.
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => LoginView() )
                );
              },
            ),
          ),
          // Tambahkan elemen UI lainnya seperti riwayat transaksi, foto galeri, dll.
        ],
      ),
    );
  }
}

