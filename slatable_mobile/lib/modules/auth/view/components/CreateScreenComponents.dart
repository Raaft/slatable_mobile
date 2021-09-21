import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class BuildSwitch extends StatefulWidget {
  final String title;
  final bool isBig;
  const BuildSwitch(this.title, this.isBig);

  @override
  _BuildSwitchState createState() => _BuildSwitchState();
}

class _BuildSwitchState extends State<BuildSwitch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: widget.isBig
                  ? TextStyles.agreeToPolicyBig
                  : TextStyles.agreeToPolicy,
            ),
          ),
          widget.isBig
              ? SizedBox(
                  width: 10,
                )
              : Container(),
          CupertinoSwitch(
            value: false,
            onChanged: (v) {},
            trackColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
