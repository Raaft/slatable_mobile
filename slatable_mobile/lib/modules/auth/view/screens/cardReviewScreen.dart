import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateAccComponents.dart';
import 'package:slatable_mobile/modules/auth/view/components/agentInfocomponents.dart';

class CardReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(107.0), // here the desired height
              child: AppBar(
                  elevation: 0,
                  leading: BackButton(
                    color: Colors.black,
                  )),

              // backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CreateAccHead("Title Card Preview",
                    "Please check your information.You can always edit, add or update your info later in Settings."),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  child: Container(
                    height: 199.94,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 22),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Skip",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 34),
                      child: createNextCardReviewButton(context, "Done"),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
