import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  final List<String> dropdownItemList;
  final String hintString;
  final String value;
  final Function onChangedCallback;

  CustomDropdownButton({
    @required this.dropdownItemList,
    @required this.hintString,
    @required this.value,
    @required this.onChangedCallback,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: dropdownItemList
          .map((value) => DropdownMenuItem(
                child: Center(child: Text(value)),
                value: value,
              ))
          .toList(),
      hint: new Text(hintString, textAlign: TextAlign.center),
      value: value,
      onChanged: (selectedVal) {
        onChangedCallback(selectedVal);
      },
    );
  }
}
