import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_RESULT extends StatelessWidget {
final bool isMale;
final double Result;
final double Age;
const BMI_RESULT( this.isMale, this.Result, this.Age);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI RESULT"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender: ${isMale?"MALE":"FAMALE"}",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            Text("Result:${Result.round()}"
              ,style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),),
            Text("Age:$Age",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
    );
  }
}
