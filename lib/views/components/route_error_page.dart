import 'package:flutter/material.dart';


class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Path does not exist",
          // style: GoogleFonts.poppins(
          //   fontSize: 16,
          //   color: Colors.black,
          //   fontWeight: FontWeight.w400,
          // ),
        ),
      ),
    );
  }
}
