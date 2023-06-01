import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HospitalWidget extends StatelessWidget {
  const HospitalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -35),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 500,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(1, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://loremflickr.com/500/500?random',
                        height: 110,
                        width: 110,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RSUD Tidar Kota Magelang",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.thumb_up_outlined,
                              color: Color.fromRGBO(151, 53, 227, 1),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "100%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(151, 53, 227, 1),
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Jl. Tidar No.30A, Kemirirejo, Kec. ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Magelang Tengah, Kota Magelang",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(151, 53, 227,
                                      1), // Atur warna latar belakang
                                  onPrimary: Colors.white, // Atur warna teks
                                  minimumSize: Size(160, 5),
                                  elevation: 0 // Atur ukuran minimum
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Lihat",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(223, 182, 255, 1),
                                    minimumSize: Size(10, 32),
                                    elevation: 0),
                                child: Icon(
                                  Icons.email_outlined,
                                  color: Colors.black45,
                                ))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
