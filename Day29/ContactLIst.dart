import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactPage(),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  final List<String> categories = const [
    "Family",
    "Friends",
    "Work",
    "Favorites",
  ];

  final List<Map<String, String>> contacts = const [
    {"name": "Deepak", "phone": "9876543210"},
    {"name": "deon", "phone": "9123456780"},
    {"name": "Adithya", "phone": "9988776655"},
    {"name": "Arjun", "phone": "9090909090"},
    {"name": "Deepak", "phone": "9871234567"},
    {"name": "Siby", "phone": "9012345678"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Category Grid
          Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    categories[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),

          // Contact List
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(contacts[index]["name"]![0]),
                  ),
                  title: Text(contacts[index]["name"]!),
                  subtitle: Text(contacts[index]["phone"]!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}