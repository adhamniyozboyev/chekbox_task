import 'package:flutter/material.dart';

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool value1=false;
  bool value2=false;
  bool value3=false;
  double sum=75;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('image/pizza2.jpg',height: 300,width: 300,),
              Container(
      alignment: Alignment.center,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
       Container(
          height: 400,
          width: 200,
          color: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                        value: value1,
                        side: BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),
                        onChanged: (hero) {
                          setState(() {
                          value1=hero!;
                           if(value1){sum+=5;}
                           else sum-=5;
                          });
                        //  value=true;
                        }),
                        Text('Extra Cheese'),
              ],
            ),
             Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
                    value: value2,
                    side: BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),
                    onChanged: (hero2) {
                      setState(() {
                      value2=hero2!;
                        if(value2){sum+=5;}
                        else sum-=5;
                      });
                    //  value=true;
                    }),
                    Text('Onions'),
          ],
      ),     Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
                    value: value3,
                    side: BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),
                    onChanged: (hero3) {
                      setState(() {
                      value3=hero3!;
                        if(value3){sum+=5;}
                        else sum-=5;
                        
                      });
                    //  value=true;
                    }),
                    Text('Chicken'),
          ],
      ),
            ],
          ),
       ),
      Text('Total sum: $sum sum',style: TextStyle(fontSize: 20),)
          ],
      ),
    ),
            ],
          ),
        ));
  }
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home:Myapp()
  ));
}