import 'dart:ui';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Me",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Blur(
                    blur: 1.0,
                    colorOpacity: 0.1,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(8.0),topLeft: Radius.circular(8.0)),
                    child: Container(
                      height: 216,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        image: DecorationImage(image: NetworkImage('https://avatars.githubusercontent.com/u/85394911?v=4',),
                            fit: BoxFit.cover ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Center(child: Text("Mahedi Hasan Nabil", style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),)),
                Center(child: Text("Flutter Developer . Programmer . Student", style: TextStyle(color: Colors.grey,fontSize: 18),)),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 272,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.cyan,
                    child: Column(
                      children: [
                        Center(child: Text("About Me",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Colors.white),)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 4,vertical: 6),
                            height: 160,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black12,
                            child: Text(
                              "Hi, I’m Nabil, I am a Flutter Developer . I’m interested in coding,App Development and Data Science. I’m currently learning Cross Platform Application "
                                  "Development Using Flutter. "
                               " I have a bit experience in web design and development, Django, Tkinter for UI design. "
                                  "I also have interest in Marketing Field. And am a fast learner.",
                              style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w400),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            color: Colors.black12,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () =>  UrlLauncher.launch('https://github.com/mhnabilcoder'),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(FontAwesomeIcons.githubSquare,size: 26,color: Colors.black,),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () =>  UrlLauncher.launch('https://www.facebook.com/mahedi.hasan.nabil/'),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(FontAwesomeIcons.facebookSquare,size: 24,color: Colors.white,),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () =>  UrlLauncher.launch('https://www.linkedin.com/in/mahedi-hasan-nabil/'),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(FontAwesomeIcons.linkedin,size: 24,color: Colors.white,),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () =>  UrlLauncher.launch('www.instagram.com/nabilhasan2526/'),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(FontAwesomeIcons.instagramSquare,size: 26,color: Colors.white,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),




                      ],
                    ),
                  ),
                ),


              ],
            ),
            Positioned(
              top: 110,
             child: Container(
               height: 200,
               width: 200,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(110)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: CircleAvatar(
                   backgroundColor: Colors.orange,
                   backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/85394911?v=4'),
                   radius: 100,
                 ),
               ),
             ),
            ),
            Positioned(
              top: 166,
                right: 20,
                child: FloatingActionButton(
                  onPressed: () {
                    UrlLauncher.launch('tel: +8801405974812');
                  },
                  child: Icon(Icons.call,),
                )),
            Positioned(
              top: 166,
                left: 20,
                child: FloatingActionButton(

                  backgroundColor: Colors.black26,
                  onPressed: () {
                        UrlLauncher.launch("mailto:mhnabilcoder@gmail.com");
                  },
                  child: Icon(Icons.mail_outline),
                )),
          ],
        ),
      ),
    );
  }
}
