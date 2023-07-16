import 'package:flutter/material.dart';

import 'CircleRatingWidget.dart';

class UserTopInfo extends StatefulWidget {
  const UserTopInfo({super.key});

  @override
  State<UserTopInfo> createState() => _UserTopInfoState();
}

class _UserTopInfoState extends State<UserTopInfo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)
          ),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 50,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Имя',
                          style: TextStyle(fontSize: 20, ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Фамилия', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  CircleRatingWidget(),
                ],
              ),
              Text('Подробнее...')
            ],
          ),
        ),
      ),
    );
  }
}
