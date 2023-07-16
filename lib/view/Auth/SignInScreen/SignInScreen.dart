import 'package:flutter/material.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
            ),
            const Center(
                child: Text(
                  '///CPT Market',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.w900),
                )),
            Container(
              color: Colors.black,
              height: 3,
              width: MediaQuery.of(context).size.width / 1.3,
            ),
            const SizedBox(
              height: 30,
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Имя',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black),
                          )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Фамилия',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black),
                          )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black),
                          )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Пароль',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black),
                          )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Повторите пароль',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  GestureDetector(
                    child: Container(
                      height: 53,
                      width: MediaQuery.of(context).size.width /1.7,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black, width: 3)
                      ),
                      child: const Center(child: Text('Продолжить', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900, color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
