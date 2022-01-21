import 'package:flutter/material.dart';
import 'package:tele_medicine/UI/Components/widgets/ambulance_listtile.dart';


class AmbulancePage extends StatelessWidget {
  const AmbulancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Ambulance Support",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w800),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          AmbulanceInfo(),
          AmbulanceInfo(),
          AmbulanceInfo(),
          AmbulanceInfo(),
          AmbulanceInfo(),
        ],
      ),
    );
  }
}
