import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [

          const CircleAvatar(
            radius: 45,
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),

          const SizedBox(height: 15),

          const Center(
            child: Text(
              "Asna Ali",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 35),

          Card(
            child: Column(
              children: [

                ListTile(
                  leading: const Icon(Icons.dark_mode),
                  title: const Text("Dark Mode"),
                  trailing: Switch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),

                const Divider(height: 1),

                ListTile(
                  leading: const Icon(Icons.currency_rupee),
                  title: const Text("Currency"),
                  trailing: const Text("INR"),
                ),

                const Divider(height: 1),

                ListTile(
                  leading: const Icon(Icons.info_outline),
                  title: const Text("About"),
                ),

                const Divider(height: 1),

                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Logout"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}