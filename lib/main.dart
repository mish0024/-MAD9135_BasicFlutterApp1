import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Images and Assets'),
          backgroundColor: Color.fromARGB(255, 147, 87, 238),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView(
            children: [
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/images/image${index + 1}.jpg',
                          width: 400,
                          height: 300,
                          fit: BoxFit.cover,
                          ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              
              const ListTile(
                leading: CircleAvatar(child: Icon(Icons.star)),
                title: Text('ListTile with Regular',
                    style: TextStyle(fontFamily: 'Roboto',fontSize: 25.0, fontWeight: FontWeight.normal)),
              ),
              const SizedBox(height: 15),

              const ListTile(
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: Text('ListTile with Bold',
                    style: TextStyle(
                        fontFamily: 'Roboto',fontSize: 25.0, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 15),

              const ListTile(
                leading: CircleAvatar(child: Icon(Icons.settings)),
                title: Text('ListTile with Italic Font',
                    style: TextStyle(
                        fontFamily: 'Roboto',fontSize: 25.0, fontStyle: FontStyle.italic)),
              ),

              const SizedBox(height: 15),

              const ListTile(
                leading: CircleAvatar(child: Text('R1')),
                title: Text('Roboto  Normal Emoji',
                    style: TextStyle(
                        fontFamily: 'Roboto',fontSize: 25.0, fontStyle: FontStyle.normal)),
              ),

              const SizedBox(height: 15),

              const ListTile(
                leading: CircleAvatar(child: Icon(Icons.star_half_outlined)),
                title: Text('Roboto Normal ',
                    style: TextStyle(
                        fontFamily: 'Roboto',fontSize: 25.0, fontStyle: FontStyle.normal)),
              ),
               // Space between elements

              const SizedBox(height: 15),
               


              // Horizontal ListView for Asset Images
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3, // Three local images
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/images/image${index + 4}.jpg', // Replace with local image names
                        width: 400,
                        height: 300,
                        fit: BoxFit.cover,
            ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}