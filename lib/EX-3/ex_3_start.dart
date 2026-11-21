import 'package:flutter/material.dart';



List<String> images = [
  "lib/EX-3/assets/w4-s2/bird.jpg",
  "lib/EX-3/assets/w4-s2/bird2.jpg",
  "lib/EX-3/assets/w4-s2/insect.jpg",
  "lib/EX-3/assets/w4-s2/girl.jpg",
  "lib/EX-3/assets/w4-s2/man.jpg",
];

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageGallery(),
    ));

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  int _currentIndex = 0;

  
  void _onPrevious() {
  setState(() {
    if (_currentIndex == 0) {
      _currentIndex = images.length - 1;
    } else {
      _currentIndex--;
    }
  });
}

void _onNext() {
  setState(() {
    if (_currentIndex == images.length - 1) {
      _currentIndex = 0;
    } else {
      _currentIndex++;
    }
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: _onPrevious,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: _onNext,
            ),
          ),
        ],
      ),
      body: Image.asset(images[_currentIndex]),
    );
  }
}