import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome",
          style: TextStyle(
            fontFamily: "myfont",
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 197, 223, 244),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 247, 249, 250)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.fromLTRB(80, 10, 80, 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide())),
              ),
              child: Text(
                "Log In",
                style: TextStyle(
                  fontFamily: "myfont",
                  fontSize: 30,
                  color: const Color.fromARGB(255, 5, 132, 236),
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Singip');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 228, 224, 217)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.fromLTRB(73, 10, 73, 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide())),
              ),
              child: Text(
                "Sing Up",
                style: TextStyle(
                    fontFamily: "myfont",
                    fontSize: 30,
                    color: Color.fromARGB(255, 55, 7, 119),
                    fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
