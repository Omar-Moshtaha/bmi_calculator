import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class  PageThree extends StatelessWidget {
  const  PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              'https://assets1.lottiefiles.com/packages/lf20_lyp6fz8l.json',),
          ],
        ),
      ),
    );
  }
}
