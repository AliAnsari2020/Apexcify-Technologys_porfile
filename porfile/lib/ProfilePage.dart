import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?cs=srgb&dl=pexels-bess-hamiti-83687-35537.jpg&fm=jpg',
              ),
            ),
            const SizedBox(height: 16),
            // User Name
            const Text(
              'Yousuf Ansari',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            // User Email
            const SizedBox(height: 8),
            const Text(
              'ansariyousuf878@gmail.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Passionate Flutter Developer with a love for clean UI and smooth user experiences.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Icons.phone, color: Colors.green),
              title: Text('Phone'),
              subtitle: Text('+92 3332345706'),
            ),
            const ListTile(
              leading: Icon(Icons.location_on, color: Colors.green),
              title: Text('Location'),
              subtitle: Text('Karachi, Pakistan'),
            ),
          ],
        ),
      ),

      // Floating Action Button for editing
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Edit Profile Tapped')));
        },
      ),
    );
  }
}
