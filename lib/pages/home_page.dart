import 'package:flutter/material.dart';
import 'package:mobile_banking_app/widgets/my_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(width: double.infinity,
        height: 800,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 25),
                    child: Container(decoration: BoxDecoration(gradient: 
                    LinearGradient(begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,colors: [Color(0xFFA772FF),Color(0xFF3C8BD4)]),
                    borderRadius: BorderRadius.circular(100),
                    ),
                    width: 54,
                    height: 54,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10,top: 25),
                  child: Text('Chermen Bekuzarov'),)

                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: MyIcon(icon_path: 'assets/search.png'),
                  )
                ],
              )
            ],
          ),
          BankCard()
        ],
        
        ),


        )
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  const BankCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,left: 15,right: 15),
      child: Container(
        width: double.infinity,
        height: 231,
        decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,
        end: Alignment.bottomCenter,colors: [Color(0xFFA772FF),Color(0xFF3C8BD4)]),
        borderRadius: BorderRadius.circular(20)
        ),
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.end,children: [Text('data')],),
        Row(children: [Text('data')],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [Text('data')],),
      ],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
      ),
    );
  }
}