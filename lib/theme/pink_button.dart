import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'n_colors.dart';

class PinkButton extends StatelessWidget {
  Widget textWidget;
  double? width;
  final void Function() onTap;


  PinkButton(this.textWidget, this.width, this.onTap);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: width,
          height: 45.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              border: Border.all(
                  color: NColors.text4,
                  width: 0.5
              ),
              color: NColors.powderPink2
          ),
          child: Material(
            color: Colors.transparent,
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: textWidget
                )
            ),
          ),
        ),
      ),
    );
  }
}