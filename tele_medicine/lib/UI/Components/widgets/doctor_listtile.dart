import 'package:flutter/material.dart';
import 'package:tele_medicine/UI/Components/doctor_details_screen.dart';

class DoctorInfoContainer extends StatelessWidget {
  const DoctorInfoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetailsPage(),));
        },
        child: Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2017/01/29/21/16/nurse-2019420_1280.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 220,

                      child: Text("Dr. Muhammad Saifuddin",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 18,
                          width: 200,
                          child: Text("Medicine",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87))),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.6),
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],

                      ),
                      child: Text("MBBS(DMC), D-Card(Austria), MCPS(MED)",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
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
