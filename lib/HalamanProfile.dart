import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LupaSandiPage extends StatelessWidget {
  const LupaSandiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(color: Color(0xff253550)),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 50,top: 250),
          padding: EdgeInsets.all(
            30,
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                  )),
                  labelText: 'Masukan Nomer Telpon',
                  prefixIconColor: Color(0xffFFFFFF),
                  hintText: 'Tulis Nomer Telpon',
                  prefixIcon: Icon(Icons.person_2),
                ),
              ),
             Center(
        child: Container(
          margin: const EdgeInsets.only(top: 160),
          padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(11)),
          child: Text(
            "Masukan Password",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      ),
            ],
          ),
        ),
        SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 64,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Masukan Nomer Ponsel ",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: const Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                child: Text(
                  "Masukan Nomer Ponsel Anda untuk daftar atau\n Masukan ke Aplikasi Docrum",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                      color: const Color(
                        0xffFFFFFF,
                      )),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
        )
      ],
    ));
  }
}
