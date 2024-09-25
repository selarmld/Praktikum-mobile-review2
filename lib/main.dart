import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Praktikum PBB Pertemuan 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// codingan listview
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(10),
//         children: [
//           Container(
//             width: double.infinity,
//             height: 250,
//             margin: const EdgeInsets.only(bottom: 10),
//             color: Colors.red,
//           ),
//           Container(
//             width: double.infinity,
//             height: 250,
//             margin: const EdgeInsets.only(bottom: 10),
//             color: Colors.blue,
//           ),
//           Container(
//             width: double.infinity,
//             height: 250,
//             margin: const EdgeInsets.only(bottom: 10),
//             color: Colors.green,
//           ),
//         ],
//       ),
//     );
//   }
// }

// codingan gridview
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: GridView(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//         ),
//         padding: const EdgeInsets.all(10),
//         children: [
//           Container(
//             width: double.infinity,
//             height: 250,
//             margin: const EdgeInsets.only(bottom: 10),
//             color: Colors.red,
//           ),
//           Container(
//             width: double.infinity,
//             height: 250,
//             margin: const EdgeInsets.only(bottom: 10),
//             color: Colors.blue,
//           ),
//           Container(
//             width: double.infinity,
//             height: 250,
//             margin: const EdgeInsets.only(bottom: 10),
//             color: Colors.green,
//           ),
//         ],
//       ),
//     );
//   }
// }

//buat ada gambarnya
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: GridView(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//         ),
//         padding: const EdgeInsets.all(10),
//         children: [
//           Container(
//               width: double.infinity,
//               height: 250,
//               margin: const EdgeInsets.only(bottom: 10),
//               decoration: BoxDecoration(
//                   color: Colors.red,
//                   image: DecorationImage(image: AssetImage("gambar.jpg")))),
//           Container(
//             width: double.infinity,
//             height: 250,
//             margin: const EdgeInsets.only(bottom: 10),
//             color: Colors.blue,
//             child: const Image(image: AssetImage("th.jpg")),
//           ),
//           Container(
//               width: double.infinity,
//               height: 250,
//               margin: const EdgeInsets.only(bottom: 10),
//               color: Colors.green,
//               child: Image.network("https://picsum.photos/200")),
//         ],
//       ),
//     );
//   }
// }

// buat icons bisa juga icons nya di ubah menjadi gambar
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("List view"),
//         backgroundColor : Colors.deepOrange[300],
//       ),
//       body: ListView(
//         children: const [
//           // buat icons kek poto profil gt
//           ListTile(
//             leading : CircleAvatar(
//               backgroundImage: AssetImage("sun.jpg"),
//             ),
//             title: Text("Sun"),
//             trailing: Icon(Icons.keyboard_arrow_right),
//           ),
//           //icons sun
//           // ListTile(
//           //   leading: Icon(Icons.sunny),
//           //   title: Text('Sun'),
//           //   trailing: Icon(Icons.keyboard_arrow_right),
//           // ),
//           ListTile(
//             leading: Icon(Icons.brightness_3),
//             title: Text('Moon'),
//             trailing: Icon(Icons.keyboard_arrow_right),
//           ),
//           ListTile(
//             leading: Icon(Icons.star),
//             title: Text('Star'),
//             trailing: Icon(Icons.keyboard_arrow_right),
//           ),
//         ],
//       ),
//     );
//   }
// }

class _MyHomePageState extends State<MyHomePage> {
  List<String> titles = ['bike', 'boat', 'bus', 'car'];

  @override
  Widget build(BuildContext context) {
    // final icons = [
    //   Icons.directions_bike,
    //   Icons.directions_boat,
    //   Icons.directions_bus,
    //   Icons.directions_car
    // ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("List view"),
        backgroundColor: const Color.fromARGB(255, 159, 182, 133),
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, nomor) {
          return Card(
            // child: ListTile(
            //   leading: Icon(icons[index]),
            //   title: Text(titles[index]),
            //   trailing: Icon(Icons.keyboard_arrow_right),
            // ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://picsum.photos/200/300?images=$nomor"),
              ),
              title: Text(titles[nomor]),
              // fungsi buat tab dipencet dia bakal ilang gt
              onTap: () {
                setState(() {
                  titles.removeAt(nomor);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
