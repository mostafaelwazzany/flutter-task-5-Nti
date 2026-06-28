import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
    required this.title,
    required this.body,
    this.backgroundColor = AppColors.background,
  });

  final String title;
  final Widget body;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300, width: 0.5),
                ),
                child: IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black87, size: 20),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            );
          },
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundColor: AppColors.primaryGreen,
              radius: 18,
              child: Text(
                'RB',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: AppColors.primaryGreen),
              child: Text(
                'Rebecca Barbara',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}
