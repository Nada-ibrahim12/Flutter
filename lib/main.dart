import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 5),
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: const Text(
                  "Facebook",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(244, 14, 87, 224),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3),
              ),
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.search, color: Colors.black, size: 30),
            ),
            const SizedBox(width: 10), // Add spacing between icons
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3),
              ),
              padding: const EdgeInsets.all(10),
              child: const Icon(Icons.messenger, color: Colors.black, size: 30),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Facebook, (home, video, notifications, menu) icons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                  child: Row(
                    children: [
                      Icon(Icons.home, size: 35),
                      SizedBox(width: 25),
                      Icon(Icons.people_rounded, size: 35),
                      SizedBox(width: 25),
                      Icon(Icons.video_label, size: 35),
                      SizedBox(width: 25),
                      Icon(Icons.flag_outlined, size: 35),
                      SizedBox(width: 25),
                      Icon(Icons.notifications, size: 35),
                      SizedBox(width: 25),
                      Icon(Icons.menu, size: 35),
                    ],
                  ),
                ),
                Divider(color: Color.fromARGB(255, 3, 34, 34)),
                // Profile icon and input field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        child: const Icon(Icons.person, size: 70),
                      ),
                      const SizedBox(width: 25),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60.0),
                              borderSide: const BorderSide(
                                color: Colors.black, // Set the border color
                                width: 1.0,
                              ),
                            ),
                            hintText: "   What's in your mind?",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Color.fromARGB(255, 3, 34, 34)),
                // Live video, Photo, live location
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                  child: Row(
                    children: [
                      const Icon(Icons.video_call, size: 35, color: Color.fromARGB(255, 255, 0, 0)),
                      const SizedBox(width: 10),
                      const Text(
                        'Live',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 25.0),
                      Container(
                        width: 1, // Width of the vertical line
                        height: 30, // Height of the vertical line
                        color: Colors.black, // Color of the vertical line
                      ),
                      const SizedBox(width: 25.0),
                      const Icon(Icons.photo, size: 35, color: Color.fromARGB(255, 60, 189, 60)),
                      const SizedBox(width: 10),
                      const Text(
                        'Photo',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 25.0),
                      Container(
                        width: 1, // Width of the vertical line
                        height: 30, // Height of the vertical line
                        color: Colors.black, // Color of the vertical line
                      ),
                      const SizedBox(width: 25.0),
                      const Icon(
                        Icons.location_on,
                        size: 35,
                        color: Color.fromARGB(255, 222, 59, 59),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Live',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Divider(color: Color.fromARGB(255, 3, 34, 34)),
                // Stories Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Stories',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                ),
                Container(
                  height: 140, // Height of the stories section
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      // Custom story item for adding a new story
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          children: [
                            Container(
                              width: 70, // Width of the rectangle
                              height: 100, // Height of the rectangle
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), // Rounded corners
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Color.fromARGB(244, 14, 87, 224),
                                size: 35,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Your Story',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      buildStoryItem(
                        'https://www.example.com/path/to/your/profile/image2.jpg',
                        'Friend 1',
                      ),
                      buildStoryItem(
                        'https://www.example.com/path/to/your/profile/image3.jpg',
                        'Friend 2',
                      ),
                      buildStoryItem(
                        'https://www.example.com/path/to/your/profile/image4.jpg',
                        'Friend 3',
                      ),
                      buildStoryItem(
                        'https://www.example.com/path/to/your/profile/image4.jpg',
                        'Friend 4',
                      ),
                      buildStoryItem(
                        'https://www.example.com/path/to/your/profile/image4.jpg',
                        'Friend 5',
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.3),
                  thickness: 8.0,
                ),
                // Posts Section
                buildPosts(), // Call to dynamic post section
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget buildPosts() {
  // Example list of post data (could be fetched from an API or elsewhere)
  List<Map<String, dynamic>> posts = [
    {
      'imageUrl': 'https://www.example.com/path/to/post/image1.jpg',
      'name': 'Friend 1',
      'date': '10/5/2024',
    },
    {
      'imageUrl': 'https://www.example.com/path/to/post/image2.jpg',
      'name': 'Friend 2',
      'date': '10/5/2024',
    },
    {
      'imageUrl': 'https://www.example.com/path/to/post/image3.jpg',
      'name': 'Friend 3',
      'date': '10/5/2024',
    },
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: posts.asMap().entries.map((entry) {
      int index = entry.key;
      Map<String, dynamic> post = entry.value;
      return Column(
        children: [
          if (index > 0) Divider(color: Colors.grey.withOpacity(0.3)), // Add divider between posts
          buildPost(post['imageUrl'], post['name'], post['date']),
        ],
      );
    }).toList(),
  );
}

Widget buildPost(String imageUrl, String name, String date) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3),
              ),
              child: const Icon(Icons.person, size: 45),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity, // Full width of the parent
          height: 320, // Height of the rectangle
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // Rounded corners
            color: Colors.grey.withOpacity(0.3),
          ),
          // You can add image here if imageUrl is provided
          // child: imageUrl != null ? Image.network(imageUrl, fit: BoxFit.cover) : null,
        ),
      ],
    ),
  );
}

Widget buildStoryItem(String imageUrl, String name) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        Container(
          width: 70, // Width of the rectangle
          height: 100, // Height of the rectangle
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10), // Rounded corners
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}
