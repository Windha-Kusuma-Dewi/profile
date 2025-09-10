import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Profile Saya",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Foto Profil dengan Shadow
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.4),
                      blurRadius: 20,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/profile1.jpg"),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Nama & Pekerjaan
            Text(
              "Naufal Aziz",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
            ),
            SizedBox(height: 6),
            Text(
              "Mobile & Web Developer",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueGrey,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 25),

            // Bio Card
            Card(
              elevation: 8,
              shadowColor: Colors.blueAccent.withOpacity(0.4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Saya suka coding Flutter dan Laravel."
                  "Fokus belajar mobile & web app development."
                  "Tujuan saya adalah menjadi developer yang bisa membuat solusi bermanfaat.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.blueGrey[800],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),

            // Info Kontak
            Column(
              children: [
                _buildContactTile(
                  Icons.email,
                  "naufalaziz@gmail.com",
                  Colors.blueAccent,
                ),
                _buildContactTile(
                  Icons.phone,
                  "+62 812-3456-7890",
                  Colors.blue,
                ),
                _buildContactTile(
                  Icons.location_on,
                  "Bandung, Indonesia",
                  Colors.lightBlue,
                ),
              ],
            ),

            SizedBox(height: 30),

            // Tombol Sosmed
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialButton(Icons.web, Colors.blueAccent, () {}),
                _buildSocialButton(Icons.code, Colors.lightBlue[800]!, () {}),
                _buildSocialButton(Icons.photo_camera, Colors.indigo, () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk contact info
  Widget _buildContactTile(IconData icon, String text, Color color) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Icon(icon, color: color, size: 28),
        title: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.blueGrey[900]),
        ),
      ),
    );
  }

  // Widget untuk tombol sosmed
  Widget _buildSocialButton(
    IconData icon,
    Color color,
    VoidCallback onPressed,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: 28, color: color),
      ),
    );
  }
}
