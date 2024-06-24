import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class OtpContainer extends StatelessWidget {
  var onChange;
  var onTap;
  var controller;

  OtpContainer(
      {Key? key,
      this.onChange,required this.controller,this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      margin: EdgeInsets.all(5),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        onTap: () => onTap(),
        onChanged: (value) => onChange(value),
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
    );
  }
}
