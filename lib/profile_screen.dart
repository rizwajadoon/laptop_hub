
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const navy = Color(0xFF173B63);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),

      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: navy,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const SizedBox(height: 10),

            // Profile Icon
            const CircleAvatar(
              radius: 48,
              backgroundColor: Color(0xFFDCE6F1),
              child: Icon(
                Icons.person,
                size: 55,
                color: navy,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Create Your Profile',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: navy,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              'Enter your personal information',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 25),

            // Personal Information
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Personal Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                hintText: 'Enter your name',
                prefixIcon: Icon(Icons.person_outline),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email_outlined),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                hintText: 'Enter your phone number',
                prefixIcon: Icon(Icons.phone_outlined),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Location',
                hintText: 'Enter your city',
                prefixIcon: Icon(Icons.location_on_outlined),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Save Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Profile UI Demo'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: navy,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  'Save Profile',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 28),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Account Options',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // My Listings
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.laptop,
                  color: navy,
                ),
                title: const Text('My Listings'),
                subtitle: const Text('Manage your laptops'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ),

            // Notifications
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.notifications_outlined,
                  color: navy,
                ),
                title: const Text('Notifications'),
                subtitle: const Text('View latest updates'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ),

            // Edit Profile
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.edit_outlined,
                  color: navy,
                ),
                title: const Text('Edit Profile'),
                subtitle: const Text('Update your information'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ),

            // Logout
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: const Text('Logout'),
                subtitle: const Text('Sign out of your account'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
