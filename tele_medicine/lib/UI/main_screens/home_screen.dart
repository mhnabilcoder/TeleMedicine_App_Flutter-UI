import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tele_medicine/UI/Components/doctor_details/all_doctors_details_screen.dart';
import 'package:tele_medicine/UI/Components/widgets/top_doctors_container.dart';
import 'package:tele_medicine/UI/services_screens/ambulance_screen.dart';
import 'package:tele_medicine/UI/popular_categories_screens/doctorslist_screen.dart';
import 'package:tele_medicine/UI/services_screens/clinicvisit_screen.dart';
import 'package:tele_medicine/UI/services_screens/profile_screen.dart';
import 'package:tele_medicine/UI/services_screens/web_page.dart';
import 'package:tele_medicine/models/allDoctorsInfo_model.dart';
import 'package:tele_medicine/models/department_model.dart';
import 'package:tele_medicine/repositories/allDoctorsInfo_repo.dart';
import 'package:tele_medicine/repositories/department_repo.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AllDoctorsInfo> allDoc=[];
  @override
  void initState() {
    super.initState();
    AllDoctorsInfoRepo.getAllDoctorsInfo().then((value) {
      setState(() {
        allDoc.addAll(value);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 4,),
              ///Babylon logo & About Me Profile
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WebPage(),));
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/babylon.png")),
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(6.0),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
                      },
                      child: Container(
                        height: 50,
                        width: 50,

                        decoration: BoxDecoration(
                          color: Colors.cyan,
                            borderRadius: BorderRadius.circular(112),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/85394911?v=4'),
                          ),
                        ),
                      ),
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

                    ///HOW CAN WE HELP YOU & SERVICES AREA
                    Container(
                      height: 180,
                      child: Column(
                        children: [
                          /// HOW CAN WE HELP YOU
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("How can we help you?",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          ///SERVICES: CLINIC VISIT, HELPLINE, AMBULANCE
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
                          child: Text("Recomended For You",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    Container(
                      child: ListView.builder(
                        itemCount: allDoc.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                        return AllDoctorsInfoContainer(dectors: allDoc.elementAt(index),) ;
                      },),
                    ),

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
                    Icon(FontAwesomeIcons.ambulance,size: 40,color: Colors.red,),
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




class PopularCategories extends StatefulWidget {
  const PopularCategories({Key? key}) : super(key: key);

  @override
  State<PopularCategories> createState() => _PopularCategoriesState();
}

class _PopularCategoriesState extends State<PopularCategories> {
  List<Department> depList=[];
  @override
  void initState() {
    super.initState();
    DepartmentRepo.getDepartmentList().then((value) {
      setState(() {

        depList.addAll(value);

      });
    });

  }
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
                    children: depList.map((deps){
                      return GestureDetector(
                        onTap: () {
                          _navigatePage(index: deps.id!);
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _customIcon(id: deps.id!),
                              SizedBox(height: 2,),
                              Text("${deps.name??""}",style: TextStyle(fontWeight: FontWeight.bold)),
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
                      );
                    }).toList(),
                  ),
                ),
          )
        ],
      ),
    );
  }
  Widget _customIcon({required int id}){
    IconData? iconData;
    if(id==2){
      iconData=Icons.medication;
    }else if(id==1){
      iconData=FontAwesomeIcons.heartbeat;
    } else if(id==3){
      iconData=FontAwesomeIcons.eye;
    }else{
      iconData=FontAwesomeIcons.baby;
    }
    return Icon(iconData,size: 38,color: Colors.black,);
  }
 void  _navigatePage({required int index}){
    if(index==1){
      Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorsPage(deptList: depList.elementAt(0),),));
    }else if(index==2){
      Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorsPage(deptList: depList.elementAt(1),),));
    } else if(index==3){
      Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorsPage(deptList: depList.elementAt(2),),));
    }else if(index==4){
      Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorsPage(deptList: depList.elementAt(3),),));
    }

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
          Container(
              height: 180,
              child: TopDoctorsContainer()),
        ],
      ),
    );
  }
}

class AllDoctorsInfoContainer extends StatelessWidget {

  final AllDoctorsInfo dectors;
  AllDoctorsInfoContainer({Key? key,required this.dectors}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AllDoctorDetailsPage(all_doctor: dectors,),));
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
                    image: DecorationImage(image: NetworkImage("${dectors.image}"),
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

                      child: Text("${dectors.name}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                          height: 18,
                          width: 200,
                          child: Text("${dectors.department}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87))),
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
                      child: Text("${dectors.degree}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
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
