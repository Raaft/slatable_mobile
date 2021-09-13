import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slatable_mobile/config/app_theme.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';

import 'package:slatable_mobile/modules/home/view/Screens/homelightEmptyScreen.dart';

import 'cubit/bloc_obsirve.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(Slatable());
}

class Slatable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<MainCubit>(create: (BuildContext context) => MainCubit())
        ],
        child: BlocConsumer<MainCubit, MainState>(
            listener: (context, state) {},
            builder: (context, state) {
              return MaterialApp(
                title: 'Flutter Demo',
                theme: lightAppTheme,
                home: HomeLightEmptyScreen(),
                /*  WelcomeScreen(
                  key: UniqueKey(),
                )  */
              );
            }));
  }
}
/*    class MyHomePage extends StatefulWidget {
  MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FlutterFFmpeg? flutterFFmpeg;

  @override
  void initState() {
    FlutterFFmpeg flutterFFmpeg = FlutterFFmpeg();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}   */
