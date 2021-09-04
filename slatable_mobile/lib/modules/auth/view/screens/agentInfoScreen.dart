import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateAccComponents.dart';
import 'package:slatable_mobile/modules/auth/view/components/agentInfocomponents.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';

class AgentInfoScreen extends StatelessWidget {
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
            body: SingleChildScrollView(
              child: Column(
                children: [
                  CreateAccHead("Agent Info","Fill in as much as you can. You get to decide later if you want to include this info with your self tape."),
                  createTextField(context, "Name", "Name"),
                  createTextField(context, "Company", "Company"),
                  createTextField(
                      context, "Contact number", "Contact number"),
                  createTextField(
                      context, "Email address", "Email address"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 22),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                createNextCardReviewButton(context, "Next (3/3)")

                ],
              ),
            ),
          );
        });
  }
}
