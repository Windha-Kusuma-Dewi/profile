import 'package:flutter/material.dart';

class JojoProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        children: [
          // Bagian header dengan foto profil
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 60, bottom: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.lightBlue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(
                    "assets/profile3.jpg",
                  ), // ganti sesuai file kamu
                ),
                SizedBox(height: 15),
                Text(
                  "M. Jauhara Makinan",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Fullstack Developer",
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ],
            ),
          ),

          // Bagian konten
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  // Bio Card
                  Card(
                    elevation: 8,
                    shadowColor: Colors.blueAccent.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Saya adalah seorang Fullstack Developer yang suka mengembangkan "
                        "aplikasi modern berbasis web maupun mobile. "
                        "Menguasai berbagai bahasa pemrograman, framework, serta selalu ingin "
                        "belajar teknologi baru untuk meningkatkan kualitas coding.",
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

                  // Info kontak
                  Column(
                    children: [
                      _buildInfoTile(Icons.email, "jojo.dev@mail.com"),
                      _buildInfoTile(Icons.phone, "+62 812-3456-7890"),
                      _buildInfoTile(Icons.location_on, "Bandung, Indonesia"),
                    ],
                  ),
                  SizedBox(height: 30),

                  // Tombol sosial media
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialButton(Icons.web, Colors.blue, () {}),
                      _buildSocialButton(Icons.code, Colors.green, () {}),
                      _buildSocialButton(
                        Icons.camera_alt,
                        Colors.purple,
                        () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk info kontak
  Widget _buildInfoTile(IconData icon, String text) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent, size: 28),
        title: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.blueGrey[900]),
        ),
      ),
    );
  }

  // Widget untuk tombol sosial media
  Widget _buildSocialButton(
    IconData icon,
    Color color,
    VoidCallback onPressed,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
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
