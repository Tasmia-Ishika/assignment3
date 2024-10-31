import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 150,
              backgroundColor: Colors.black,
              child:  Image.network("https://scontent.fcgp3-2.fna.fbcdn.net/v/t39.30808-6/454420314_1886025785215051_1824501296485970495_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGUGNP4vpvqItqYtTZVh_EowT-dtIZyqzXBP520hnKrNaECp60R-Qr1wwAmu48HGidrz3NKXREN_4VJYDHFEuU6&_nc_ohc=fW_QmvnlHV0Q7kNvgFtWC-P&_nc_zt=23&_nc_ht=scontent.fcgp3-2.fna&_nc_gid=A0vEmh1Q3TQtYHoPPYvGtid&oh=00_AYD2eL_DTrTcuwT0nCiD15w9NM2ujkGyOzspDpVNKWrWhg&oe=67295868",
                width: 200,height: 200,),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text("TASMIA ISLAM", style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold,
                  color: Colors.black,
              ),),
            ),

            SizedBox(height: 10),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalInfoPage()),
                );
              },
              child: Text("Personal Info"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SkillsPage()),
                );
              },
              child: Text("Skills"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EducationPage()),
                );
              },
              child: Text("Education"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExperiencePage()),
                );
              },
              child: Text("Experience"),
            ),
          ],
        ),
      ),
    );
  }
}

// Personal Info Page
class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Personal Info")),
      body: Center(
        child: Text(
          "Name: TASMIA ISLAM\nPhone: +8801781421270\nEmail: itasmia.cse@gmail.com",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// Skills Page
class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Skills")),
      body: Center(
        child: Text(
          "Skills: Flutter, Dart, Js, React, Node & Express Js",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// Education Page
class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Education")),
      body: Center(
        child: Text(
          "Education: B.Sc in Computer Science & Engineering, International Islamic University Chittagong",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// Experience Page
class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Experience")),
      body: Center(
        child: Text(
          "Experience: No experience as I am starting my career journey.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
