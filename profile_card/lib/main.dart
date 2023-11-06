import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile Card",
          style: TextStyle(fontSize: 30, fontFamily: 'titleFont'),
        ),
        // backgroundColor: Color.fromARGB(255, 4, 66, 160),
        backgroundColor: Color.fromARGB(255, 2, 35, 84),
      ),

      //body

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/flutters.png"),
                        fit: BoxFit.cover))),
            Positioned(
              top: 120,
              child: Container(
                  width: 412,
                  height: 660,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      border: Border.all(
                          color: Color.fromARGB(255, 217, 217, 217), width: 5),
                      color: Colors.white),
                  padding: EdgeInsets.only(top: 60),
                  child: MyInfo()),
            ),
            Positioned(
                top: 50,
                left: 130,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                        )
                      ],
                      borderRadius: BorderRadius.circular(75),
                      border: Border.all(
                          color: Color.fromARGB(255, 238, 237, 237), width: 5)),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/srk.png"),
                    backgroundColor: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 550,
        width: double.infinity,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          // Name
          Container(
            child: Column(
              children: [
                RichText(
                    text: const TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Hii, ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      )),
                  TextSpan(
                      text: " I am ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                  TextSpan(
                      text: " TABREZ",
                      style: TextStyle(
                          fontFamily: 'Andallan',
                          color: Color.fromARGB(255, 4, 66, 160),
                          fontSize: 30,
                          fontWeight: FontWeight.bold))
                ])),
                RichText(
                    text: const TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "and I'm a",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                      text: " Flutter Developer",
                      style: TextStyle(
                        color: Color.fromARGB(255, 50, 129, 248),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))
                ]))
              ],
            ),
          ),

          // About me section
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // About me
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                    height: 350,
                    width: 320,
                    child: const Card(
                      color: Color.fromARGB(255, 2, 35, 84),
                      shadowColor: Colors.grey,
                      elevation: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "About me",
                            style: TextStyle(
                                fontFamily: 'anand',
                                color: Colors.white,
                                fontSize: 30),
                          ),
                          SizedBox(
                            height: 250,
                            width: 280,
                            child: Text(
                              "Hello, I'm Tabrez, a Computer Science graduate with a deep passion for technology.Honing my skills in JavaScript, Git, MySQL, Flutter, and Dart. I'm eager to take on new challenges and continue building remarkable digital experiences. My journey in the world of technology has been an exciting one, and I'm committed to crafting innovative and user-friendly solutions.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Poppins'),
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                // Profile Slide
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                    height: 350,
                    width: 320,
                    child: const Card(
                      color: Color.fromARGB(255, 2, 35, 84),
                      shadowColor: Colors.grey,
                      elevation: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Personal Profile",
                            style: TextStyle(
                                fontFamily: 'anand',
                                color: Colors.white,
                                fontSize: 30),
                          ),
                          SizedBox(
                            height: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DOB : 24th Dec 2000",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text("Qualification : B.Sc. CS",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                                Text("Contact : 82707 06893",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                                Text("Mail Id : tabrezsta1@gmail.com",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                                Text("Location : Bangalore",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                // Experience Slide
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                    height: 350,
                    width: 320,
                    child: const Card(
                      color: Color.fromARGB(255, 2, 35, 84),
                      shadowColor: Colors.grey,
                      elevation: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Experience",
                            style: TextStyle(
                                fontFamily: 'anand',
                                color: Colors.white,
                                fontSize: 30),
                          ),
                          SizedBox(
                            height: 270,
                            width: 280,
                            child: Text(
                              "I am a passionate and creative developer with a solid foundation in web development, specializing in HTML, CSS, and JavaScript, Bootstrap, Git, MySql, Flutter with dart having completed a successful 8-month internship where I built responsive and user-friendly websites and work on numerous project. I am driven by the pursuit of creating digital solutions that are not only functional but also user-friendly. ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Poppins'),
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                //Skill Slide
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                    height: 350,
                    width: 320,
                    child: const Card(
                      color: Color.fromARGB(255, 2, 35, 84),
                      shadowColor: Colors.grey,
                      elevation: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Skills",
                            style: TextStyle(
                                fontFamily: 'anand',
                                color: Colors.white,
                                fontSize: 30),
                          ),
                          SizedBox(
                              height: 250,
                              width: 280,
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                spacing: 30,
                                runSpacing: 20,
                                children: [
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/fluttericon.png")),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/dart.png")),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/mysql.png")),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/git.png")),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                        image:
                                            AssetImage("assets/images/js.png")),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/bootstrap.png")),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/css.png")),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/html.jpg")),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Social Media Icon
          Container(
            height: 50,
            width: 350,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 15,
                              spreadRadius: 2,
                              color: Color.fromARGB(255, 2, 35, 84))
                        ]),
                    child: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Color.fromARGB(255, 2, 35, 84),
                      size: 40,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 15,
                              spreadRadius: 2,
                              color: Color.fromARGB(255, 2, 35, 84))
                        ]),
                    child: const FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Color.fromARGB(255, 2, 35, 84),
                      size: 40,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 15,
                              spreadRadius: 2,
                              color: Color.fromARGB(255, 2, 35, 84))
                        ]),
                    child: const FaIcon(
                      FontAwesomeIcons.github,
                      color: Color.fromARGB(255, 2, 35, 84),
                      size: 40,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 15,
                              spreadRadius: 2,
                              color: Color.fromARGB(255, 2, 35, 84))
                        ]),
                    child: const FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Color.fromARGB(255, 2, 35, 84),
                      size: 40,
                    ),
                  ),
                ]),
          )
        ]),
      ),
    );
  }
}
