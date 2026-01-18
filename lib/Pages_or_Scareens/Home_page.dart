import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int num1 = 30;
    final String name = "Yaseen";
    // final num temp = 30.33;
    // double Pi = 3.14; //just testing these veriables
    // bool isMale = true;
    // num dono  chizen samaj leta hai means 'double' hai ya 'intiger' hai bolke
    // var day = "tuesday";
    // const Pi2 = 33.55; //Constant me changes nahi kiya jasakta
    //final list =
    //"aam,kalangda,pero,pinapple"; // final me ham list me modifei karsakte hain lekin contant me fix rahega yahi diff hai

    return Scaffold(
      appBar: AppBar(
        title: Text("Yaseen App Developer"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Wellcome to $num1 days  flutter by $name, brokey 62 "),
      ),
      drawer: Drawer(),
    );
  }
}
