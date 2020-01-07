import 'package:flutter/material.dart';
import 'package:mbti/models/mbtis.dart';

class CustomDropdownButton extends StatelessWidget {
  final List<String> dropdownItemList;
  final String hintString;
  final String value;
  final Function onChangedCallback;
  final bool hasIcon;
  final String keyString;

  CustomDropdownButton({
    @required this.dropdownItemList,
    @required this.hintString,
    @required this.value,
    @required this.onChangedCallback,
    this.hasIcon = false,
    this.keyString,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      key: Key(keyString),
      isExpanded: true,
      items: dropdownItemList
          .map((value) => DropdownMenuItem(
                key: Key(value),
                child: Row(
                  children: <Widget>[
                    Text(value),
                    SizedBox(
                      width: 15,
                    ),
                    if (hasIcon)
                      Image.asset(
                        'images/${Mbtis.Types[value]["character"]}.png',
                        width: 25,
                        color: Color(Mbtis.Types[value]["color"]),
                      ),
                  ],
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
