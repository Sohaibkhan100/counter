import 'package:flutter/material.dart';

class Component extends StatefulWidget {
  num operation;
  String operator;
  num count;
  num res;
  Component(
      {required this.operation,
      required this.operator,
      required this.count,
      required this.res,
      super.key});

  @override
  State<Component> createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.8,
        color: const Color.fromARGB(255, 228, 228, 228),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "${widget.operation}" " ${widget.operator}" "${widget.count}",
                style: Theme.of(context).textTheme.headline4,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 30,
                child: Text("${widget.res}"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
