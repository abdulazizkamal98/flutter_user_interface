import 'package:flutter/material.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
        backgroundColor: Color.fromARGB(255, 214, 3, 73),
      ),
      appBar: AppBar(
        title: Text(
          "SingUp",
          style: TextStyle(
            fontFamily: "myfont",
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 189, 3, 65),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: "       :ادخل اسم المستخدم",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(200)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: "     :ادخل البريدى الالكترونى ",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(200)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: "       :ادخل كلمة المرور   ",
                prefixIcon: Icon(Icons.lock),
                suffixIcon:
                    IconButton(onPressed: () {}, icon: Icon(Icons.visibility)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(200)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 215, 2, 2)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.fromLTRB(70, 10, 70, 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide())),
              ),
              child: Text(
                "SingUp",
                style: TextStyle(
                    fontFamily: "myfont",
                    fontSize: 30,
                    color: Color.fromARGB(255, 246, 244, 244),
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
