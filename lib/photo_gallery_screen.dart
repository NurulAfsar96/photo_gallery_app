import 'package:flutter/material.dart';
import 'package:photo_gallery/data.dart';
import 'package:photo_gallery/photo_details_screen.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Gallery"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: photos.length,
          itemBuilder: (context, index) {
            final photo = photos[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhotoDetailScreen(photo: photo),
                  ),
                );
              },
              child: GridTile(

                child: Image.asset(photo['imageUrl']! ,fit: BoxFit.cover), // Access imageUrl using map key
                footer: GridTileBar(
                  backgroundColor: Colors.black87,
                  title: Text(photo['title']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),), // Access title using map key
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
