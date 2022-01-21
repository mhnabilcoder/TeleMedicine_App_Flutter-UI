import 'package:flutter/material.dart';
import 'package:tele_medicine/UI/Components/widgets/doctor_listtile.dart';

class Eye_SpecialistPage extends StatelessWidget {
  const Eye_SpecialistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Eye Specialists",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w800),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DoctorInfoContainer(),
            DoctorInfoContainer(),
            DoctorInfoContainer(),
            DoctorInfoContainer(),
            DoctorInfoContainer(),
            DoctorInfoContainer(),
          ],
        ),
      ),
    );
  }
}