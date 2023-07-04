import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String dropdownValue = "One";
  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.menu),
          style: TextStyle(color: Colors.white),
          underline: Container(
            height: 2,
            color: Colors.white,
          ),
          onChanged: (String?newValue){
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: const [
            DropdownMenuItem<String>(
              value: 'One',
              child: 
              Text("0",style:TextStyle(color: Colors.black),),
          ),
             DropdownMenuItem<String>(
              value: 'two',
              child: Text("1",style:TextStyle(color: Colors.black),),
          ),
            DropdownMenuItem<String>(
              value: 'three',
              child: Text("2",style:TextStyle(color: Colors.black),),
          ),
          DropdownMenuItem<String>(
              value: 'four',
              child: Text("3",style:TextStyle(color: Colors.black),),
          ),
          ],
        );
  }
}