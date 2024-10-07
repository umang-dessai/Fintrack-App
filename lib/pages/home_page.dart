import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: ListView(
        children: [
          buildTransactionTile(
            icon: Icons.shopping_cart,
            title: 'Shopping',
            date: '12 Jan, 2024',
            amount: '-\$150',
            isNegative: true,
          ),
          buildTransactionTile(
            icon: Icons.restaurant,
            title: 'Restaurant',
            date: '10 Jan, 2024',
            amount: '-\$60',
            isNegative: true,
          ),
          buildTransactionTile(
            icon: Icons.payments,
            title: 'Salary',
            date: '5 Jan, 2024',
            amount: '+\$2000',
            isNegative: false,
          ),
        ],
      ),
    );
  }

  Widget buildTransactionTile({
    required IconData icon, // Added 'required'
    required String title,  // Added 'required'
    required String date,   // Added 'required'
    required String amount, // Added 'required'
    required bool isNegative // Added 'required'
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: isNegative ? Colors.red : Colors.green,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(date),
      trailing: Text(
        amount,
        style: TextStyle(
          color: isNegative ? Colors.red : Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
