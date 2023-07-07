import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class  SecondPage extends StatelessWidget {
  const  SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              'https://assets9.lottiefiles.com/private_files/lf30_iwSZjK.json',),
          ],
        ),
      ),
    );
  }
}
