import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class AmbulanceInfo extends StatelessWidget {
  const AmbulanceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        tileColor: Colors.redAccent,
        title: Text("Shohag Mia",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
        subtitle: Text("017987654321",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold)),
        leading: Icon(Icons.local_hospital,size: 40,color: Colors.white,),
        trailing: Icon(Icons.call,color: Colors.white,),
        onTap: () {
          UrlLauncher.launch('tel: +880123456789');
        },
      ),
    );
  }
}
