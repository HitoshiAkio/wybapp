import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    ),
  );
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController username = TextEditingController();
    final TextEditingController password = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Image.asset("assets/img/wyb.jpg"),
              const SizedBox(height: 50),
              TextField(
                controller: username,
                style: TextStyle(color: Colors.yellowAccent), // Text color inside
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.yellowAccent), // Label color
                  filled: true,
                  fillColor: Colors.grey[900], // Darker background to make yellow pop
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellowAccent), // Border color when not focused
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellowAccent, width: 2), // Border color when focused
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.yellowAccent),
                  filled: true,
                  fillColor: Colors.grey[900],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellowAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellowAccent, width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Login logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellowAccent,
                  foregroundColor: Colors.black, // Text color on button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: const Text("Login",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
