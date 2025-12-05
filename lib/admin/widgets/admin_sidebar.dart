import 'package:flutter/material.dart';
import '../screen/dashboard_screen.dart';

class AdminSidebar extends StatelessWidget {
  const AdminSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: double.infinity,
      color: const Color(0xff1a1a2e),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          const Center(
            child: Text(
              "Hamro Hotel",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 30),

          _menuItem(context, "Dashboard", const AdminDashboardScreen()),
          _menuDivider(),

          _menuItem(context, "Hotels", null),
          _menuItem(context, "Rooms", null),
          _menuItem(context, "Bookings", null),
          _menuItem(context, "Users", null),

          _menuDivider(),
          _menuItem(context, "Logout", null),
        ],
      ),
    );
  }

  Widget _menuDivider() => Divider(color: Colors.white24);

  Widget _menuItem(BuildContext context, String title, Widget? page) {
    return InkWell(
      onTap: page == null
          ? null
          : () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => page),
              ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
