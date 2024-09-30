import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 8),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/300',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Haykal Tedy",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "haykaltedysaputra@gmail.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _buildProfileOption(
                    icon: Icons.edit,
                    label: "Edit Profile",
                    onTap: () {
                      // Aksi edit profil
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.lock,
                    label: "Change Password",
                    onTap: () {
                      // Aksi ubah kata sandi
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.settings,
                    label: "Settings",
                    onTap: () {
                      // Aksi pengaturan
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.notifications,
                    label: "Notifications",
                    onTap: () {
                      // Aksi notifikasi
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.help_outline,
                    label: "Help & Support",
                    onTap: () {
                      // Aksi bantuan
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.logout,
                    label: "Logout",
                    onTap: () {
                      Navigator.pushReplacementNamed(context, 'register');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        title: Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 18),
        onTap: onTap,
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: ProfilePage(),
    ));
