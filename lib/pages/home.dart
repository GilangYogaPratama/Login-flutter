import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:login_app_flutter/pages/homedoc.dart';
import 'package:login_app_flutter/widget/ambulance.dart';
import 'package:login_app_flutter/widget/hospital.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void logOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd MMMM yyyy').format(DateTime.now());

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: 920,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bg_sisrute.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hai Adolf Hitler",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "adolfhitler@gmail.com",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.qr_code,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ), // Mengisi ruang kosong antara elemen-elemen di dalam Row
                          Icon(
                            Icons.search_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(111, 31, 173, 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Image.asset(
                                  "assets/sisrute_logo_white.png", // Jalur file gambar yang ingin ditampilkan
                                  fit: BoxFit
                                      .contain, // Penyesuaian gambar di dalam kotak
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 135,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.timer_outlined,
                                      size: 20,
                                    ),
                                    Spacer(),
                                    Text(
                                      'Riwayat',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 15,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 133,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      formattedDate,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return AmbulanceWidget();
                      },
                      itemCount: 1, // Hanya satu item
                    ),
                    Transform.translate(
                      offset: Offset(0, -20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeDoctorPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Colors.white, // Atur warna latar belakang
                              onPrimary: Colors.white, // Atur warna teks
                              minimumSize: Size(175, 50), // Atur ukuran minimum
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.house_outlined,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Home Doctor",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Colors.white, // Atur warna latar belakang
                              onPrimary: Colors.white, // Atur warna teks
                              minimumSize: Size(175, 50), // Atur ukuran minimum
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.people_outline,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Find Doc",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Transform.translate(
                      offset: Offset(0, -20),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "Layanan Kesehatan Terdekat",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: Row(
                              children: [
                                Text(
                                  "Lihat Semua",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(111, 31, 173, 1)),
                                ),
                                Icon(Icons.arrow_right_alt_outlined)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return HospitalWidget();
                      },
                      itemCount: 3, // Hanya satu item
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
