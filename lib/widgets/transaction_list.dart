import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Yesterday, Jan 20"),
                Row(
                  children: [
                    Text("All Transaction"),
                  ],
                ),
              ],
            ),
          ),
          transactionHistory(Icons.restaurant, Colors.red.shade800,
              'Restaurant', 'Payment', '-₹1200', Colors.blueGrey),
          Divider(
            color: Colors.grey[200],
          ),
          transactionHistory(Icons.send, Colors.teal, 'Vijay Mallya',
              'Received', '+₹500', Color.fromARGB(255, 16, 80, 98)),
          Divider(
            color: Colors.grey[200],
          ),
          transactionHistory(Icons.coffee, Colors.yellow.shade700,
              'Amruttulya Chai', 'Payment', '-₹50', Colors.blueGrey),
          Divider(
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }

  ListTile transactionHistory(IconData icon, Color Mcolor, String title,
      String subtitle, String price, Color Scolor) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 239, 243, 245),
        child: Icon(
          icon,
          color: Mcolor,
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(
        price,
        style:
            TextStyle(color: Scolor, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
