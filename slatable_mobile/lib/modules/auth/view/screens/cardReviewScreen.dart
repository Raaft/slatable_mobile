import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateAccComponents.dart';
import 'package:slatable_mobile/modules/auth/view/components/agentInfocomponents.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/auth/view/screens/welcomeScreen.dart';
import 'package:slatable_mobile/shared/const.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class CardReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              height: contextHeight(context),
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(80.0),

                  // here the desired height
                  child: AppBar(
                      elevation: 0,
                      leading: IconButton(
                          onPressed: () => navBack(context),
                          icon: Icon(Icons.keyboard_backspace,
                              color: Colors.black))),

                  // backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
                ),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    createAccHead("Title Card Preview",
                        "Please check your information.\nYou can always edit, add or update \nyour info later in Settings."),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            verticalSpace(15),
                            Text('David',
                                style: TextStyles.inter16whiteMedium600),
                            Text('Union Affiliation',
                                style: TextStyles.inter14whiteMedium400),
                            verticalSpace(20),
                            Text('Project Title',
                                style: TextStyles.inter14whiteMedium400),
                            Text('CHARACTER',
                                style: TextStyles.inter14whiteMedium400),
                            verticalSpace(50),
                            Text('(123) 4565-789 actor@website.com',
                                style: TextStyles.inter10whiteMedium300),
                            Text(
                                'Agent Company (123) 4565-7890 agent@company.com',
                                style: TextStyles.inter10whiteMedium300),
                            Text(
                                'Manager Company (123) 4565-7890 manager@company.com',
                                style: TextStyles.inter10whiteMedium300),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 34),
                      child: createColoredButton(
                          context,
                          "Done",
                          MyColor.button,
                          () => navTo(context, WelcomeScreen())),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
