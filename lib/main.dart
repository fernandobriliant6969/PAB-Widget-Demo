import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Foto',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true
      ),
      home: MainPage(title: 'Galeri Foto')
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({ super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title, 
          style: TextStyle(
            color: Colors.white
          )),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Container(
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Image.network('https://picsum.photos/id/88/300/200',
                width: double.infinity,
                fit: BoxFit.cover,
              )
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Jalan di Barcelona',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0              
              )
            )
          ),
          Divider(
            thickness: 1.0, // Ketebelan Garis
            indent: 15, // Batas jarak dari kiri
            endIndent: 15, // Batas jarak dari kanan
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.place, color: Colors.red),
                    ),
                    Text('Lokasi: Barcelona, Spanyol')
                  ]
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.calendar_month, color: Colors.blue),
                    ),
                    Text('Publikasi: 13 Agustus 2013')
                  ]
                )
              ],
            )
          ),
          Divider(
            thickness: 1.0, // Ketebelan Garis
            indent: 15, // Batas jarak dari kiri
            endIndent: 15, // Batas jarak dari kanan
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Deskripsi',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                ),
                Row (
                  children: [
                    Expanded(
                      child: Text('Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0
                        )
                      )
                    )
                  ],
                )
              ],
            )
          )
        ],)
    );
  }
  
}