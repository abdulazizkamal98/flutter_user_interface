import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
      ),
      appBar: AppBar(
        title: Text(
          "LogIn",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontFamily: "myfont",
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue[50],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: TextField(
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "       ادخل اسم المستخدم",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "       ادخل كلمة المرور   ",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 189, 175, 133),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide())),
                ),
                child: Text(
                  "تسجيل الدخول",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
