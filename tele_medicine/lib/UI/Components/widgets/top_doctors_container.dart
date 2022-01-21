import 'package:flutter/material.dart';

import '../doctor_details_screen.dart';

class TopDoctorsContainer extends StatelessWidget {
  const TopDoctorsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetailsPage(),));
        },
        child: Container(
          height: 170,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2017/01/29/21/16/nurse-2019420_1280.jpg"),
              fit: BoxFit.cover,
            ),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                height: 70,
                width: 160,
                color: Colors.black54,
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 140,
                      child: Text("Dr. Munir Hossen ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      height: 30,
                      width: 140,
                      child: Text("MBBS , FCPS ,CBRS, KSRM ",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
