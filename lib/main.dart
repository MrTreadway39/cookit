import 'package:flutter/material.dart';


void main() => runApp(const CookingApp());

class CookingApp extends StatelessWidget {
  const CookingApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooking App',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: const HomePage(),
      routes: {
        '/how_you_want': (context) => const HowYouWantPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cooking App'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/c.jpg")
            ,
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Hungry?!',
                style: TextStyle(fontSize: 24.0),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/how_you_want');
                },
                child: const Text('Start Cooking'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HowYouWantPage extends StatelessWidget {
  const HowYouWantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How You Want'),
      ),
      body: const Center(
        child: Text(
          'How do you want to cook?',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}