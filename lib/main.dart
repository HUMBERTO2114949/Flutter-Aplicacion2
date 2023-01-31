import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'Llamar'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);
Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'El ITES RENE DESCARTES forma a sus alumnos para ser profesionales en el ambito que deseen estudiar dado su catalogo de carreras a elegir',
    softWrap: true,
  ),
);
    Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'ITES RENE DESCARTES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            Text(
              'Programación y web master',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('100'),
    ],
  ),
);
    return MaterialApp(
      title: 'Flutter layout - HRRD',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout - HRRD'),
        ),
        body: ListView(           
        children: [     
          Image.asset(            
           'images/lake.jpg',            
           width: 600,            
           height: 240,            
           fit: BoxFit.cover,            
          ),       
        titleSection,
        buttonSection,  
        textSection,          
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  

}