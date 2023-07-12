import 'package:flutter/material.dart';

class AdsPostCard extends StatefulWidget {
  const AdsPostCard({super.key});

  @override
  State<AdsPostCard> createState() => _AdsPostCardState();
}

class _AdsPostCardState extends State<AdsPostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.width / 2.3,
                width: MediaQuery.of(context).size.width / 2.3,
                color: Colors.red,
                child: Image.network(
                    'https://www.vmestehorosho.ru/upload/iblock/82f/e3gk15017w9p1le356lzi59148rqmvee/30030163b2.jpg'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              'Название \nдве строки',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            child: Text(
              '1000 Р',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Text('Санкт-Петербург, ул. Савушкина 128 к1'),
          )
        ],
      ),
    );
  }
}
