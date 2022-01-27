import 'package:flutter/material.dart';
import 'package:tele_medicine/UI/Components/doctor_details/top_doctors_details_screen.dart';
import 'package:tele_medicine/models/topDoctors_model.dart';
import 'package:tele_medicine/repositories/topDoctors_repo.dart';



class TopDoctorsContainer extends StatefulWidget {
  const TopDoctorsContainer({Key? key}) : super(key: key);

  @override
  State<TopDoctorsContainer> createState() => _TopDoctorsContainerState();
}

class _TopDoctorsContainerState extends State<TopDoctorsContainer> {
  List<TopDoctor> doctList=[];
  void initState() {
    super.initState();
    TopDoctorsRepo.getTopDoctors().then((value) {
      setState(() {


        doctList.addAll(value);

      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: doctList.length,
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(6.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => TopDoctorDetailsPage(top_doctor:doctList.elementAt(index) ),));
          },
          child: Container(
            height: 170,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("${doctList.elementAt(index).image}"),
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
                  // width: 160,
                  color: Colors.black54,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          height: 24,
                          width: 140,
                          child: Text("${doctList.elementAt(index).name}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 40,
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: Text("${doctList.elementAt(index).degree}",style: TextStyle(color: Colors.white70,fontSize: 10,fontWeight: FontWeight.bold),),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },);
  }
}
