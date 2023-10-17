import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'package:mytsel/app/modules/pay/pay.dart';
import 'package:mytsel/app/modules/profil/profil.dart';
import 'package:mytsel/app/pulsa/detailpulsa.dart';
import 'package:mytsel/app/pulsa/isipulsa.dart';
import 'package:mytsel/app/modules/inbox/inbox_view.dart';
import 'package:mytsel/app/modules/topup/topup.dart';



class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: "Hai, ",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: "Shendy",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20),
              width: 30,
              height: 30,
              child: Image.asset(
                "assets/icons/qr.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 54, 17, 221),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color.fromARGB(255, 54, 17, 221),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 54, 17, 221),
                              Color(0xFFB31217),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "081290112333",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Image.asset("assets/logo/simpati.png"),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Sisa Pulsa Anda",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            // ...
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(
      "Rp34.000",
      style: TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    ),
    Row(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TopupPage()),
            );
          },
          child: Text(
            "Topup Saldo",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF4CAF50), // Ganti warna sesuai kebutuhan Anda
          ),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TransactionPage()),
            );
          },
          child: Text(
            "Isi Pulsa",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFF7B731),
          ),
        ),
      ],
    ),
  ],
),
// ...

                            SizedBox(height: 10),
                            Divider(
                              color: Colors.black,
                            ),
                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                text: "Berlaku Sampai",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: "22-22-2222",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "POIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF7B731),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "172",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                                onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => KuotaDetailPage() )
                                    );
                                  },
                          child: StatusCard(
                            title: "Internet",
                            data: "12.19",
                            satuan: "GB",
                          ),
                          ),
                          StatusCard(
                            title: "Telepon",
                            data: "0",
                            satuan: "Min",
                          ),
                          StatusCard(
                            title: "SMS",
                            data: "23",
                            satuan: "SMS",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
                // Container(
                //   height: 7,
                //   color: Colors.grey[300],
                // ),
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Column(
                      children: [
                        // body
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 20),
                              Text(
                                "Kategori Paket",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    title: "Internet",
                                    icon: "assets/icons/internet.png",
                                  ),
                                  ItemKategori(
                                    title: "Telpon",
                                    icon: "assets/icons/telpon.png",
                                  ),
                                  ItemKategori(
                                    title: "Roaming",
                                    icon: "assets/icons/roaming.png",
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    title: "Hiburan",
                                    icon: "assets/icons/hiburan.png",
                                  ),
                                  ItemKategori(
                                    title: "Unggulan",
                                    icon: "assets/icons/unggulan.png",
                                  ),
                                  ItemKategori(
                                    title: "Riwayat",
                                    icon: "assets/icons/riwayat-icon.png",
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Terbaru",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ItemTerbaru(
                                      image: "assets/images/images-1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-2.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-2.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-2.png",
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                        ),
                        // Navigation
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          height: 75,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          // color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => HomeView() )
                                    );
                                  },
                              child: ItemNav(
                                icon: "beranda",
                                status: true,
                                title: "Beranda",
                                 ),
                              ),
                              // ItemNav(
                              //   icon: "riwayat",
                              //   status: true,
                              //   title: "Riwayat",
                              // ),
                              // ItemNav(
                              //   icon: "bantuan",
                              //   status: true,
                              //   title: "Bantuan",
                              // ),
                              InkWell(
                                onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp() )
                                    );
                                  },
                              child: ItemNav(
                                icon: "inbox",
                                status: true,
                                title: "Inbox",
                              ),
                              ),
                              InkWell(
                               onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ProfilePage() )
                                    );
                                  },
                              child: ItemNav(
                                icon: "profile",
                                status: true,
                                title: "Akun Saya",
                              ),
                             ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemTerbaru extends StatelessWidget {
  ItemTerbaru({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: Get.width * 0.7,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  ItemNav({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            color: (status == true) ? Color(0xFFEC2028) : Color(0xFF747D8C),
          ),
        ),
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  StatusCard({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            RichText(
              text: TextSpan(
                text: data,
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFFEC2028),
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: " $satuan",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF747D8C),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
