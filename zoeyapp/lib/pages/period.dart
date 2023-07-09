import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Period extends StatefulWidget {
  const Period({Key? key}) : super(key: key);

  @override
  _PeriodState createState() => _PeriodState();
}

class _PeriodState extends State<Period> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                center: const Text(
                  "Period in 3 Days",
                  style: TextStyle(color: Color(0xFF001c30), fontSize: 20, fontWeight: FontWeight.bold), 
                ),
                animation: true,
                animationDuration: 2000,
                radius: 150,
                lineWidth: 40,
                percent: 0.7,
                progressColor: Colors.pink,
                backgroundColor: Colors.grey.shade200,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 2000,
                lineHeight: 40,
                percent: 0.7,
                progressColor: Colors.pink,
                backgroundColor: Colors.grey.shade200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
