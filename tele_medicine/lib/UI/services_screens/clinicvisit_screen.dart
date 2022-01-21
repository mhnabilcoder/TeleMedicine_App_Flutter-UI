import 'package:flutter/material.dart';

class ClinicVisitPage extends StatelessWidget {
  const ClinicVisitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Clinic Visit",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w800),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Clinic Visiting System is not Integrated  Yet",textAlign: TextAlign.center,style: TextStyle(color: Colors.black54,fontSize: 34,fontWeight: FontWeight.w800,),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
