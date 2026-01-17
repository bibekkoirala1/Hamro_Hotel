import 'package:flutter/material.dart';
import '../widgets/admin_sidebar.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const AdminSidebar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Dashboard",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // DASHBOARD CARDS
                  Row(
                    children: const [
                      _StatCard(title: "Total Hotels", value: "12"),
                      SizedBox(width: 15),
                      _StatCard(title: "Total Rooms", value: "48"),
                      SizedBox(width: 15),
                      _StatCard(title: "Bookings", value: "29"),
                      SizedBox(width: 15),
                      _StatCard(title: "Users", value: "342"),
                    ],
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    "Latest Bookings",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DataTable(
                        columns: const [
                          DataColumn(label: Text("User")),
                          DataColumn(label: Text("Hotel")),
                          DataColumn(label: Text("Room")),
                          DataColumn(label: Text("Check-in")),
                          DataColumn(label: Text("Status")),
                        ],
                        rows: const [
                          DataRow(cells: [
                            DataCell(Text("Ramesh")),
                            DataCell(Text("Hotel Everest")),
                            DataCell(Text("Deluxe")),
                            DataCell(Text("2025-01-18")),
                            DataCell(Text("Confirmed")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("Sita")),
                            DataCell(Text("Green Valley Resort")),
                            DataCell(Text("Suite")),
                            DataCell(Text("2025-01-21")),
                            DataCell(Text("Pending")),
                          ]),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;

  const _StatCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 110,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 6),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
