import 'package:demo_flutter/Fragment/FiveFragment.dart';
import 'package:demo_flutter/Fragment/FourFragment.dart';
import 'package:demo_flutter/Fragment/OneFragment.dart';
import 'package:demo_flutter/Fragment/SixFragment.dart';
import 'package:demo_flutter/Fragment/ThreeFragment.dart';
import 'package:demo_flutter/Fragment/TwoFragment.dart';
import 'package:demo_flutter/Fragment/SevenFragment.dart';
import 'package:demo_flutter/Fragment/EightFragment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal.shade400),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade400,
          title: Text('Demo Flutter Application'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
              Tab(text: 'Tab 4'),
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
              Tab(text: 'Tab 4'),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            OneFragment(),
            TwoFragment(),
            ThreeFragment(),
            FourFragment(),
            FiveFragment(),
            SixFragment(),
            SevenFragment(),
            EightFragment(),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal.shade400),
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const MyHomePage(title: 'Demo Flutter Application'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   // sanckbar function
//   MySanckBar(message, context) {
//     return ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         duration: const Duration(seconds: 2),
//         action: SnackBarAction(label: 'Undo', onPressed: () {}),
//       ),
//     );
//   }

//   final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
//     backgroundColor: Colors.black,
//     foregroundColor: Colors.white,
//     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
//     textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
//   );

//   MyAlertDialog(message, context) {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Alert Dialog'),
//           content: Text(message),
//           actions: [
//             TextButton(
//               child: const Text('Cancel'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: const Text('OK'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   var customArray = [
//     {
//       'name': 'Sonjoy Barman',
//       'email': 'OYb3K@example.com',
//       'image':
//           "https://pbs.twimg.com/profile_images/1969540996032839682/43i1FCtJ_400x400.jpg",
//     },
//     {
//       'name': 'John Doe',
//       'email': '1h0tJ@example.com',
//       'image':
//           "https://images.unsplash.com/photo-1499714608240-22fc6ad53fb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
//     },
//     {
//       'name': 'Jane Smith',
//       'email': 'VHs5S@example.com',
//       'image':
//           "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(
//           'Sonjoy',
//           style: TextStyle(
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//             letterSpacing: 2,
//           ),
//         ),

//         // title: Text(widget.title),
//         toolbarHeight: 60,
//         centerTitle: false,
//         toolbarOpacity: 0.8,
//         backgroundColor: Colors.teal.shade400,
//         elevation: 0.00,
//         shadowColor: Colors.white,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.settings),
//             tooltip: 'Settings',
//             onPressed: () {
//               MySanckBar('Settings Clicked', context);
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.account_circle),
//             tooltip: 'Profile',
//             onPressed: () {
//               MySanckBar('Profile Clicked', context);
//             },
//           ),
//         ],
//         // leading: const Icon(Icons.menu),
//       ),

//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
//         ],

//         onTap: (int index) {
//           if (index == 0) {
//             MySanckBar('Home Clicked', context);
//           }
//           if (index == 1) {
//             MySanckBar('Business Clicked', context);
//           }
//           if (index == 2) {
//             MySanckBar('School Clicked', context);
//           }
//         },
//       ),

//       // drawer
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.teal),
//               padding: EdgeInsets.all(0),
//               margin: EdgeInsets.all(0),

//               child: UserAccountsDrawerHeader(
//                 decoration: BoxDecoration(color: Colors.white24),
//                 accountName: Text('Sonjoy Sarker'),
//                 accountEmail: Text('dXh1o@example.com'),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                     'https://pbs.twimg.com/profile_images/1969540996032839682/43i1FCtJ_400x400.jpg',
//                   ),
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home, color: Colors.teal.shade400),
//               title: const Text('Home'),
//               onTap: () {
//                 MySanckBar('Home Clicked', context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.settings, color: Colors.teal.shade400),
//               title: const Text('Settings'),
//               onTap: () {
//                 MySanckBar('Settings Clicked', context);
//               },
//             ),
//           ],
//         ),
//       ),

//       endDrawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.teal),
//               padding: EdgeInsets.all(0),
//               margin: EdgeInsets.all(0),

//               child: UserAccountsDrawerHeader(
//                 decoration: BoxDecoration(color: Colors.white24),
//                 accountName: Text('Sonjoy Sarker'),
//                 accountEmail: Text('dXh1o@example.com'),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                     'https://pbs.twimg.com/profile_images/1969540996032839682/43i1FCtJ_400x400.jpg',
//                   ),
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home, color: Colors.teal.shade400),
//               title: const Text('Home'),
//               onTap: () {
//                 MySanckBar('Home Clicked', context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.settings, color: Colors.teal.shade400),
//               title: const Text('Settings'),
//               onTap: () {
//                 MySanckBar('Settings Clicked', context);
//               },
//             ),
//           ],
//         ),
//       ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add, color: Colors.white, size: 30, weight: 20),
//       ),

//       // body: Center(
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: <Widget>[
//       //       const Text('This application is built with Flutter: '),
//       //       Text(
//       //         '$_counter',
//       //         style: Theme.of(context).textTheme.headlineMedium,
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       // body: Container(
//       //   height: 200,
//       //   width: 200,
//       //   alignment: Alignment.center,
//       //   margin: const EdgeInsets.all(50),
//       //   padding: const EdgeInsets.all(20),
//       //   decoration: BoxDecoration(
//       //     color: Colors.teal.shade100,
//       //     border: Border.all(color: Colors.teal.shade400, width: 5),
//       //     borderRadius: BorderRadius.circular(20),
//       //     boxShadow: [
//       //       BoxShadow(
//       //         color: Colors.grey.withOpacity(0.5),
//       //         spreadRadius: 5,
//       //         blurRadius: 7,
//       //         offset: const Offset(0, 3), // changes position of shadow
//       //       ),
//       //     ],
//       //   ),
//       //   child: Center(
//       //     child: Column(
//       //       mainAxisAlignment: MainAxisAlignment.center,
//       //       children: <Widget>[
//       //         const Text(
//       //           'This application is built with Flutter: ',
//       //           textAlign: TextAlign.center,
//       //           style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//       //         ),
//       //         Text(
//       //           '$_counter',
//       //           style: Theme.of(context).textTheme.headlineMedium,
//       //           textAlign: TextAlign.center,
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       // ),
//       // body: Row(
//       //   mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //   crossAxisAlignment: CrossAxisAlignment.center,
//       //   children: [
//       //     Container(
//       //       width: 100,
//       //       height: 100,
//       //       color: Colors.teal.shade100,
//       //       child: const Center(child: Text('A')),
//       //     ),
//       //     Container(
//       //       width: 100,
//       //       height: 100,
//       //       color: Colors.teal.shade200,
//       //       child: const Center(child: Text('B')),
//       //     ),
//       //     Container(
//       //       width: 100,
//       //       height: 100,
//       //       color: Colors.teal.shade300,
//       //       child: const Center(child: Text('C')),
//       //     ),
//       //   ],
//       // ),
//       // body: Row(
//       //   mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //   crossAxisAlignment: CrossAxisAlignment.center,
//       //   children: [
//       //     TextButton(
//       //       onPressed: () {
//       //         MySanckBar('Text Button Clicked', context);
//       //       },
//       //       child: const Text('Text Button'),
//       //     ),
//       //     ElevatedButton(
//       //       onPressed: () {
//       //         MySanckBar('Elevated Button Clicked', context);
//       //       },
//       //       child: const Text('Elevated Button'),
//       //       style: raisedButtonStyle,
//       //     ),
//       //     OutlinedButton(
//       //       onPressed: () {
//       //         MySanckBar('Outlined Button Clicked', context);
//       //       },
//       //       child: const Text('Outlined Button'),
//       //     ),
//       //   ],
//       // ),
//       // body: Center(
//       //   child: ElevatedButton(
//       //     onPressed: () {
//       //       MyAlertDialog('This is an alert dialog', context);
//       //     },
//       //     child: const Text('Show Alert Dialog'),
//       //     style: raisedButtonStyle,
//       //   ),
//       // ),
//       // input form
//       // body: Column(
//       //   mainAxisAlignment: MainAxisAlignment.start,
//       //   children: [
//       //     Padding(
//       //       padding: EdgeInsets.all(20),
//       //       child: TextField(
//       //         decoration: InputDecoration(
//       //           border: OutlineInputBorder(
//       //             borderRadius: BorderRadius.circular(10.0),
//       //           ),
//       //           labelText: 'Username',
//       //           hintText: 'Enter your username',
//       //           prefixIcon: Icon(Icons.person),
//       //         ),
//       //       ),
//       //     ),
//       //     Padding(
//       //       padding: EdgeInsets.all(20),
//       //       child: TextField(
//       //         obscureText: true,
//       //         decoration: InputDecoration(
//       //           border: OutlineInputBorder(
//       //             borderRadius: BorderRadius.circular(10.0),
//       //           ),
//       //           labelText: 'Password',
//       //           hintText: 'Enter your password',
//       //           prefixIcon: Icon(Icons.lock),
//       //         ),
//       //       ),
//       //     ),
//       //     Padding(
//       //       padding: EdgeInsets.all(20),
//       //       child: ElevatedButton(
//       //         onPressed: () {
//       //           MySanckBar('Login Button Clicked', context);
//       //         },
//       //         child: const Text('Login'),
//       //         style: raisedButtonStyle,
//       //       ),
//       //     ),
//       //   ],
//       // ),
//       // list view builder
//       // body: ListView.builder(
//       //   itemCount: customArray.length,
//       //   itemBuilder: (context, index) {
//       //     return GestureDetector(
//       //       onTap: () {
//       //         MySanckBar('${customArray[index]['name']} Clicked', context);
//       //       },
//       //       child: Card(
//       //         margin: const EdgeInsets.all(10),
//       //         child: ListTile(
//       //           leading: CircleAvatar(
//       //             backgroundImage: NetworkImage(customArray[index]['image']!),
//       //           ),
//       //           title: Text(customArray[index]['name']!),
//       //           subtitle: Text(customArray[index]['email']!),
//       //           trailing: Icon(Icons.arrow_forward_ios, size: 16),
//       //         ),
//       //       ),
//       //     );
//       //   },
//       // ),
//       // grid view builder
//       body: GridView.builder(
//         itemCount: customArray.length,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//         ),
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               MySanckBar('${customArray[index]['name']} Clicked', context);
//             },
//             child: Card(
//               margin: const EdgeInsets.all(0),
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: NetworkImage(customArray[index]['image']!),
//                 ),
//                 title: Text(customArray[index]['name']!),
//                 subtitle: Text(customArray[index]['email']!),
//                 trailing: Icon(Icons.arrow_forward_ios, size: 16),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
