import 'package:flutter/material.dart';
import 'package:smart_pay/widgets/action_button.dart';
import 'package:smart_pay/widgets/credit_card.dart';
import 'package:smart_pay/widgets/transaction_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartPay',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 16, 80, 98)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 80, 98),
      body: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back!",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Shashwat Naik",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton.outlined(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 167),
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 110,
                        ),
                        // Action Button
                        ActionButtons(),
                        SizedBox(
                          height: 30,
                        ),
                        // Transaction List
                        TransactionList(),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 25,
                    right: 25,
                    child: CreditCard(),
                  )
                ],
              ))
            ],
          )),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: Column(
                  children: [
                    Icon(Icons.home),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                )),
            IconButton(
                onPressed: () {},
                icon: Column(
                  children: [
                    Icon(Icons.credit_card),
                    Text(
                      "My Card",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                )),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color.fromARGB(255, 16, 80, 98),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(Icons.qr_code_scanner, color: Colors.white),
            ),
            IconButton(
                onPressed: () {},
                icon: Column(
                  children: [
                    Icon(Icons.bar_chart),
                    Text(
                      "Activity",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                )),
            IconButton(
                onPressed: () {},
                icon: Column(
                  children: [
                    Icon(Icons.person),
                    Text(
                      "Profile",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
