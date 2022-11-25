import 'package:counter/view/customwidget.dart';
import 'package:flutter/material.dart';

class CustomComponent extends StatefulWidget {
  const CustomComponent({
    super.key,
  });

  @override
  State<CustomComponent> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CustomComponent> {
  num _counter = 1;
  num multiplier = -5;
  num subtraction = 4;
  num divider = 6;

  num resultOfMultiplication = 0;
  num resultOfSubtractinon = 0;
  num resultOfDivision = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _multiplyCounter() {
    setState(() {
      resultOfMultiplication = multiplier * _counter;
    });
  }

  void _subtractionCounter() {
    setState(() {
      resultOfSubtractinon = subtraction - _counter;
    });
  }

  void _divisionCounter() {
    setState(() {
      resultOfDivision = divider / _counter;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: (Colors.purple),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Component(
                operation: multiplier,
                operator: " * ",
                count: _counter,
                res: resultOfMultiplication),
            Component(
                operation: subtraction,
                operator: " - ",
                count: _counter,
                res: resultOfSubtractinon),
            Component(
                operation: divider,
                operator: " / ",
                count: _counter,
                res: resultOfDivision),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.8,
                color: Color.fromARGB(255, 228, 228, 228),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.red,
                        child: IconButton(
                            onPressed: () {
                              _decrementCounter();
                              _multiplyCounter();
                              _subtractionCounter();
                              _divisionCounter();
                            },
                            icon: const Icon(Icons.remove)),
                      ),
                      Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.green,
                        child: IconButton(
                            onPressed: () {
                              _incrementCounter();
                              _multiplyCounter();
                              _subtractionCounter();
                              _divisionCounter();
                            },
                            icon: const Icon(Icons.add)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
