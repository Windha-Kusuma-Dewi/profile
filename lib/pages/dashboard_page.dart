import 'package:flutter/material.dart';
import 'windah.dart';
import 'naufal.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode
          ? ThemeData.dark().copyWith(
              scaffoldBackgroundColor: Colors.grey[900],
              cardColor: Colors.grey[800],
            )
          : ThemeData.light().copyWith(
              scaffoldBackgroundColor: Colors.grey[200],
              cardColor: Colors.white,
            ),
      home: Scaffold(
        body: Column(
          children: [
            // HEADER DASHBOARD
            Container(
              padding: EdgeInsets.only(
                top: 60,
                left: 20,
                right: 20,
                bottom: 30,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dashboard",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      isDarkMode ? Icons.dark_mode : Icons.light_mode,
                      color: Colors.white,
                      size: 28,
                    ),
                    onPressed: () {
                      setState(() {
                        isDarkMode = !isDarkMode;
                      });
                    },
                  ),
                ],
              ),
            ),

            // LIST PROFILE
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  _buildProfileCard(
                    context,
                    "Naufal Aziz",
                    "Mobile & Web Developer",
                    "assets/bg2.jpg",
                    MyProfilePage(),
                  ),
                  _buildProfileCard(
                    context,
                    "Windha Kusuma Dewi",
                    "UI/UX Designer",
                    "assets/bg1.jpg",
                    FriendProfilePage(),
                  ),
                  _buildProfileCard(
                    context,
                    "M. Jauhara Makinnan",
                    "Fullstack Developer",
                    "assets/bg3.jpg",
                    FriendProfilePage(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard(
    BuildContext context,
    String name,
    String job,
    String image,
    Widget page,
  ) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FOTO
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.asset(
                image,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // TEKS
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    job,
                    style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
