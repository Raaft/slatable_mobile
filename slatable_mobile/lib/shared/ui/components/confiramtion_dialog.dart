import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slatable_mobile/shared/services/sailor.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';
import 'package:slatable_mobile/shared/ui/helper/space.dart';
import 'package:slatable_mobile/shared/ui/helper/text_styles.dart';

import 'cr_button.dart';

class ConfirmationDialog {
  final BuildContext context;
  final bool hasClosButton, networkImage, small, dismissible, roundImage;
  final String title;
  final Widget?  widget;
  final String? buttonText, subtitle, image;
  final Function? todo;
  final Widget? bottomWidget;
  final double? scale;

  ConfirmationDialog(
      {required this.context,
      required this.hasClosButton,
      required this.networkImage,
      required this.title,
      this.subtitle,
      this.image,
      this.buttonText,
      this.widget,
      this.todo,
      this.roundImage = true,
      this.dismissible = true,
      this.scale,
      this.bottomWidget,
      this.small = false});

  Future<bool?> showConfirmationDialog() async => await showDialog(
      context: context,
      barrierDismissible: dismissible,
      builder: (ctx) => Dialog(
            backgroundColor: Colors.transparent,
            child: Consumer(builder: (ctx, watch, child) {
              return Container(
                height:
                    hasClosButton ? (small ? 408 : 515) : (small ? 360 : 465),
                width: small ? 275 : 315,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (hasClosButton)
                      IconButton(
                          icon: Icon(
                            Icons.close,
                            color:  Palette.ebony,
                          ),
                          onPressed: () => Sailor.back()),
                    Container(
                      height: small ? 360 : 465,
                      width: small ? 275 : 315,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color:  Palette.finalG
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          image == null
                              ? Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Container(height:250,child: widget!,),
                              )
                              : small
                                  ? Image.network(
                                      image!,
                                      height: 140,
                                    )
                                  : Container(
                                      width: 120,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          shape: roundImage
                                              ? BoxShape.circle
                                              : BoxShape.rectangle,
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: networkImage
                                                  ? NetworkImage(image!)
                                                  // ignore: unnecessary_cast
                                                  : (AssetImage(image!)
                                                      as ImageProvider),
                                              scale: scale ?? 1)),
                                    ),
                          SizedBox(
                            height: small ? 30 : 40,
                            child: Text(
                              title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyles.baseText

                            ),
                          ),
                          verticalSpace(small ? 16 : 10),
                          Text(
                            subtitle ?? '',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Palette.grey),
                          ),
                          Expanded(child: Container()),
                          bottomWidget ??
                              CRButton(
                                todo: () {
                                  Sailor.back(true);
                                  if (todo != null) todo!();
                                },
                                text: buttonText ?? '',
                                horizontalMargin: 0,
                              ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
          ));
}
