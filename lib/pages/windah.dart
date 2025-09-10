import 'package:flutter/material.dart';

class FriendProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Stack(
        children: [
          Column(
            children: [
              // Bagian header dengan foto profil
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 80, bottom: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.lightBlue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage("assets/profile2.jpg"),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Windha Kusuma Dewi",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Frontend Developer | UI/UX Design Enthusiast",
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
                            "Saya adalah seorang individu yang antusias dalam dunia IT, "
                            "khususnya di bidang desain dan front-end development. "
                            "Dengan minat mendalam, saya berkomitmen untuk terus belajar "
                            "teknologi pemrograman seperti HTML, CSS, JavaScript, dan framework modern.",
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
                          _buildInfoTile(Icons.email, "windhaksm@gmail.com"),
                          _buildInfoTile(Icons.phone, "+62 811-2233-4455"),
                          _buildInfoTile(Icons.location_on, "Bogor, Indonesia"),
                        ],
                      ),
                      SizedBox(height: 30),

                      // Tombol sosial media
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildSocialButton(Icons.web, Colors.blue, () {}),
                          _buildSocialButton(
                            Icons.design_services,
                            Colors.pink,
                            () {},
                          ),
                          _buildSocialButton(
                            Icons.photo_camera,
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

          // Tombol back custom
          Positioned(
            top: 40,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.blueAccent),
                onPressed: () {
                  Navigator.pop(context); // kembali ke dashboard
                },
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
