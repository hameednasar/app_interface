import 'package:flutter/material.dart';

class HameedDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAB #3'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Top Image with border
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      '../assets/1.jpeg', // You can replace it with your image URL
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            // Stacked containers with numbers in the center
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                  ),
                ),
                Container(
                  width: 50,
                  height: 200,
                  color: Colors.red.shade700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(9, (index) {
                      return Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Practice text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "PRACTICE MORE THAN THIS. IT WILL HELP YOU TO DESIGN COMPLEX MOBILE APP DESIGN",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ),

            SizedBox(height: 20),

            // Leading and trailing images with text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'LEADING',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://via.placeholder.com/100'), // Replace with an actual image
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'TRAILING',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://via.placeholder.com/100'), // Replace with an actual image
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
