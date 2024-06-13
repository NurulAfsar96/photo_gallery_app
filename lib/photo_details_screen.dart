import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery_screen.dart';

class PhotoDetailScreen extends StatelessWidget {
  const PhotoDetailScreen({Key? key, required this.photo}) : super(key: key);
  final Map<String, String> photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photo['title']!),
        backgroundColor: Colors.orangeAccent,// Access title using map key
      ),
      body: Column(
        children: [
          Image.asset(photo['imageUrl']!, fit: BoxFit.cover), // Access imageUrl using map key
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              photo['description']!,
              style: TextStyle(fontSize: 16.0,),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return PhotoScreen();
              }),
              );
              // Implement see more action here
            },
            child: Text('See More'),
          ),
        ],
      ),
    );
  }
}
