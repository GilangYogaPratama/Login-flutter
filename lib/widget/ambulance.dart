import 'package:flutter/material.dart';

class AmbulanceWidget extends StatelessWidget {
  const AmbulanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image(
              image: AssetImage(
                'assets/ambulance.png',
              ),
              width: 500,
              fit: BoxFit.contain,
            ),
            Container(
              width: 500,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo Ambulance',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Nomor Darurat",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 60,
              right: 16,
              child: Row(
                children: [
                  Icon(
                    Icons.chat_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.phone_forwarded_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ],
              ),
            ),
          ],
        ),
        Transform.translate(
          offset: Offset(0, -36),
          child: Container(
            width: 500,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "RSUD Tidar Kota Magelang",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Expanded(
                    child: Text(
                      "Jl. Tidar No.30A, Kemirirejo, Kec. Magelang Tengah, Kota Magelang, Jawa Tengah 56125",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
