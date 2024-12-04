import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 8.0, // Spacing between columns 
        mainAxisSpacing: 8.0, // Spacing between rows
        ),
        itemCount: 6, // Number of grid items
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child:  Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 40.0,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Text('Item $index',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
            ],
          );
        },
      ),
    );
  }
}