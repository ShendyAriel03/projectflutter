import 'package:flutter/material.dart';


class Notification {
  final String title;
  final String message;
  Notification({required this.title, required this.message});
}

class MyApp extends StatelessWidget {
  final List<Notification> notifications = [
    Notification(title: 'TELKOMSEL', message: 'Pengisian Rp20000 sukses. Masa aktif s/d 18/03/2031. Max masa aktif 365hr. PASTI MURAH kuota 24jam, temukan di https://bit.ly/3Jid1Ak atau *111*1#.'),
    Notification(title: 'Pemberitahuan 2', message: 'halo.'),
    Notification(title: 'Pesan 1', message: 'Ini adalah pesan pertama.'),
    Notification(title: 'Pesan 2', message: 'Ini adalah pesan kedua.'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationPage(notifications: notifications),
    );
  }
}

class NotificationPage extends StatelessWidget {
  final List<Notification> notifications;

  NotificationPage({required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi Transaksi dan Pesan'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            title: Text(notification.title),
            subtitle: Text(notification.message),
            onTap: () {
              // Tindakan saat notifikasi atau pesan diklik.
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(notification.title),
                    content: Text(notification.message),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Tutup'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}