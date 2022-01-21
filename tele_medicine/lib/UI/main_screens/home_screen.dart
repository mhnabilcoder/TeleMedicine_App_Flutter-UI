import 'package:flutter/material.dart';
import 'package:tele_medicine/UI/Components/widgets/doctor_listtile.dart';
import 'package:tele_medicine/UI/Components/widgets/top_doctors_container.dart';
import 'package:tele_medicine/UI/services_screens/ambulance_screen.dart';
import 'package:tele_medicine/UI/popular_categories_screens/cardeology_screen2.dart';
import 'package:tele_medicine/UI/popular_categories_screens/child_specialist_screen.dart';
import 'package:tele_medicine/UI/popular_categories_screens/eye_specialist_screen.dart';
import 'package:tele_medicine/UI/popular_categories_screens/medicine_screen.dart';
import 'package:tele_medicine/UI/services_screens/clinicvisit_screen.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/babylon.png")),
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(6.0),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    TopArea(),
                    SizedBox(height: 10,),
                    Container(
                      height: 180,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("How can we help you?",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          Services(),
                        ],
                      ),
                    ),
                    PopularCategories(),
                    TopDoctors(),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Recomended For You",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    DoctorInfoContainer(),
                    DoctorInfoContainer(),
                    DoctorInfoContainer(),
                    DoctorInfoContainer(),
                    DoctorInfoContainer(),
                    SizedBox(height: 60,)
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




class TopArea extends StatelessWidget {
  const TopArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Appoitment with \na doctor",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: TextField(

                            decoration: InputDecoration.collapsed(
                                border: InputBorder.none,
                                hintText: 'Search Doctors',
                                hintStyle: TextStyle(
                                  color: Colors.black12,
                                  fontSize: 18,)
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                        child: Icon(Icons.tune,size: 40,color: Colors.white70,)),
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




class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ClinicVisitPage(),));
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.assignment,size: 40,color: Colors.cyan,),
                    SizedBox(height: 2,),
                    Text("Clinic Visit",style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                UrlLauncher.launch('tel: +880123456789');
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.support_agent,size: 40,color: Colors.green,),
                    SizedBox(height: 2,),
                    Text("Helpline",style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AmbulancePage(),));
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.medical_services,size: 40,color: Colors.red,),
                    SizedBox(height: 2,),
                    Text("Ambulance",style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




class PopularCategories extends StatelessWidget {
  const PopularCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text("Popular Categories",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Container(
            height: 420,
            width: 380,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(6.0)
            ),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                crossAxisCount: 2,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CardeologyPage(),));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite,size: 40,color: Colors.redAccent,),
                          SizedBox(height: 2,),
                          Text("Cardeology",style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
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
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Eye_SpecialistPage(),));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.remove_red_eye,size: 40,color: Colors.black,),
                          SizedBox(height: 2,),
                          Text("Eye Specialist",style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
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
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MedicinePage(),));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.medication,size: 40,color: Colors.orange,),
                          SizedBox(height: 2,),
                          Text("Medicine",style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
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
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Child_SpecialistPage(),));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.child_care,size: 40,color: Colors.brown,),
                          SizedBox(height: 2,),
                          Text("Child Specialist",style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
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
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
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
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
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
          )
        ],
      ),
    );
  }
}

class TopDoctors extends StatelessWidget {
  const TopDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Top Doctors",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TopDoctorsContainer(),
                TopDoctorsContainer(),
                TopDoctorsContainer(),
                TopDoctorsContainer(),
                TopDoctorsContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

