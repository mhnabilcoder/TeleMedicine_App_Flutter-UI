import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tele_medicine/UI/main_screens/chat_screen.dart';
import 'package:tele_medicine/UI/services_screens/clinicvisit_screen.dart';
import 'package:share/share.dart';
import 'package:tele_medicine/models/topDoctors_model.dart';


class TopDoctorDetailsPage extends StatelessWidget {
  final TopDoctor top_doctor;
  const TopDoctorDetailsPage({Key? key,required this.top_doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Share.share(" https://play.google.com/store/apps/details?id=com.example.tele_medicine");
                },
                child: Icon(Icons.share,size: 30,)),
          ),
        ],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Doctor Profile",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w800),),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [ Color(0XFF00B686), Color(0XFF00838F), ]
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                        SizedBox(width: 20.0,),
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Color(0XFF00B686),
                            border: Border.all(
                              color: Colors.white,
                              width: 1.5 ,
                            ),
                            borderRadius: BorderRadius.circular(80.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('${top_doctor.image}'),
                            ),
                          ),
                        ),

                        SizedBox(width: 10.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${top_doctor.name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                              SizedBox(height: 5,),
                              Container(
                                  height: 60,
                                  width: 200,
                                  child: Text("${top_doctor.degree}",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white38))),
                              Text("${top_doctor.department}",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white))

                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    padding: EdgeInsets.only(top: 96),
                    children: [
                      Text("Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
                      SizedBox(height: 10,),
                      Container(
                        height: 220,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),



                    ],
                  ),
                ),
              ),




            ],
          ),
          Positioned(
              top: 160,
              right: 0,
              child: Container(
                height: 170,
                width: MediaQuery.of(context).size.width*0.80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.05),
                      blurRadius: 8,
                      spreadRadius: 3,
                      offset: Offset(0,10),
                    ),

                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(45),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              child: Column(
                                children: [
                                  Text("Experience",style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 2,),
                                  Text("${top_doctor.experience} YEARS",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black87
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 1,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          Expanded(
                            child: Container(
                              height: 50,

                              child: Column(
                                children: [
                                  Text("BMDC Number",style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 2,),
                                  Text("${top_doctor.bmdc}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black87
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Working in",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black54),),
                            Text("${top_doctor.institue}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Consultation Fee :",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(" ৳${top_doctor.fee}",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),

          Positioned(
              top: 180,
              left: 10,
              child: FloatingActionButton(
                child: Icon(Icons.chat),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(),));
                },
              )),

          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ClinicVisitPage(),));
                      },
                      child: Container(
                        height: 66,
                        color: Colors.cyan,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.assignment,color: Colors.white,size: 24,),
                            SizedBox(width: 2,),
                            Text("Appointment",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(

                    child: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) => AlertDialog(
                          title: Text("Unavailable"),
                          content: Text("Doctor is not Available RightNow"),
                          backgroundColor: Colors.white,
                        ),);
                      },
                      child: Container(
                        height: 66,
                        color: Color(0XFF00B686),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.video_call_rounded,color: Colors.white,size: 34,),
                            SizedBox(width: 2,),
                            Text("Call",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
