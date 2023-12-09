import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 242, 238),
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        backgroundColor: Color.fromARGB(187, 149, 51, 191),
      ),
      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 77, 81, 217).withOpacity(.8),
          child: const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 100,
                backgroundColor: Color.fromARGB(255, 226, 92, 35),
                // backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  'Profile',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 76, 166, 234),
        child: const Icon(Icons.add),
      ),
      body: const Center(
        child: Text('Roll No:- 22020570032'),
      ),
    );
  }
}
