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
      isExpanded: true,
      items: dropdownItemList
          .map((value) => DropdownMenuItem(
                child: Container(
                  child: Text(value),
                ),
                value: value,
              ))
          .toList(),
      hint: new Text(
        hintString,
      ),
      value: value,
      onChanged: (selectedVal) {
        onChangedCallback(selectedVal);
      },
    );
  }
}
