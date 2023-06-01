import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DokterWidget extends StatelessWidget {
  const DokterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -35),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 500,
          height: 150,
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
                        height: 120,
                        width: 120,
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
                          "Praktik Dr. Hendarto, MKes.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Umum",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Jl. Mayjen Bambang Soegeng",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "No.23, Glagak, Sumberrejo,",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Kec. Mertoyudan",
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
