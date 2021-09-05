import 'package:flutter/material.dart';



double contextHeight(BuildContext context){
    var height = MediaQuery.of(context).size.height ;
    var width = MediaQuery.of(context).size.width ;

   var conHeight= (height>=width)?height:width;
   return conHeight;

 }

