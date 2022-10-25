import 'dart:math';

import 'package:flutter/material.dart';

import 'calc.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  bool ismale = true;
  double hight = 120;
  double age = 12;
  double wight = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.00,
        backgroundColor: Colors.black,
        title: Text(
          'BMI CALC',
          style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.00),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.00),
                            color: ismale ? Colors.black : Colors.grey,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                  'images/male.png',
                                ),
                                height: 50.00,
                                width: 50.00,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                    fontSize: 25.00, color: Colors.pink),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.00,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.00),
                            color: !ismale ? Colors.black : Colors.grey,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                  'images/female.png',
                                ),
                                height: 50.00,
                                width: 50.00,
                              ),
                              Text(
                                'FeMale',
                                style: TextStyle(
                                    fontSize: 25.00, color: Colors.pink),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.00),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.00),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hight',
                        style: TextStyle(
                          fontSize: 70.00,
                          fontWeight: FontWeight.w900,
                          color: Colors.pink,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${hight.round()}',
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 40.00,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            width: 3.00,
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 20.00,
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.pink,
                        child: Slider(
                          value: hight,
                          min: 20,
                          max: 200,
                          onChanged: (valu) {
                            setState(() {
                              hight = valu;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.00),
                          color: Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 20.00,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink),
                            ),
                            SizedBox(
                              height: 10.00,
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                  fontSize: 30.00,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink),
                            ),
                            SizedBox(
                              height: 10.00,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.pink,
                                  ),
                                  heroTag: 'a+',
                                ),
                                SizedBox(
                                  width: 10.00,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.pink,
                                  ),
                                  heroTag: 'a-',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.00,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.00),
                          color: Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                  fontSize: 20.00,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink),
                            ),
                            SizedBox(
                              height: 10.00,
                            ),
                            Text(
                              '${wight}',
                              style: TextStyle(
                                  fontSize: 30.00,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink),
                            ),
                            SizedBox(
                              height: 10.00,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      wight++;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.pink,
                                  ),
                                  heroTag: 'w1',
                                ),
                                SizedBox(
                                  width: 10.00,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      wight--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.pink,
                                  ),
                                  heroTag: 'w-',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.grey,
              child: MaterialButton(
                onPressed: () {
                  var result = wight / pow(hight / 100, 2);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMICC(
                        res: result,
                        Gender: ismale,
                        Age: age.round(),
                      ),
                    ),
                  );
                },
                child: Text(
                  'Bla Ay Hadf',
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
