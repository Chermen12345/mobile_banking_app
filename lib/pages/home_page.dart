import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_app/widgets/my_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(width: double.infinity,
        height: 1000,
        child: Column(children: [
          FadeInDown(
                animate: true,
                duration: Duration(milliseconds: 700),
          child:Row(
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
          ),),
          FadeInDown(child: BankCard(),
          duration: Duration(milliseconds: 900),),
          FadeInDown(
            duration: Duration(milliseconds: 1100),
            child: Padding(padding: EdgeInsets.only(left: 20,top: 20),
            child: Align(alignment: Alignment.centerLeft,
            child: Text('Balance: 10955.58\$',style: TextStyle(color: Colors.black,
            fontSize: 24),))),
          ),
          FadeInDown(
            duration: Duration(milliseconds: 1300),
            child: Padding(padding: EdgeInsets.only(left: 20,top: 5),
            child: Align(alignment: Alignment.centerLeft,
            child: Text('Latest transactions:',style: TextStyle(color: Colors.black,
            fontSize: 20),))),
          ),
          Expanded(
              
              child: FadeInDown(
                duration: Duration(milliseconds: 1700),
                child: ListView(scrollDirection: Axis.vertical,children: [
                  OneTransaction(name: 'ivan', lastName: 'ivanov', cash: '125.9\$'),
                  OneTransaction(name: 'alexandr', lastName: 'vasin', cash: '125\$'),
                  OneTransaction(name: 'ivan', lastName: 'vladov', cash: '125\$'),
                  OneTransaction(name: 'juri', lastName: 'ivanov', cash: '125\$'),
                  OneTransaction(name: 'sergei', lastName: 'ivanov', cash: '125\$'),
                  OneTransaction(name: 'juri', lastName: 'ivanov', cash: '125\$'),
                  OneTransaction(name: 'sergei', lastName: 'ivanov', cash: '125\$'),
                  OneTransaction(name: 'juri', lastName: 'ivanov', cash: '125\$'),
                  OneTransaction(name: 'sergei', lastName: 'ivanov', cash: '125\$'),
                  OneTransaction(name: 'chermen', lastName: 'ivanov', cash: '125\$'),
                  OneTransaction(name: 'vanya', lastName: 'ivanov', cash: '125\$'),
                  OneTransaction(name: 'denis', lastName: 'ivanov', cash: '125\$')
                ],),
              ),
            ),
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
    return  Padding(
      padding: const EdgeInsets.only(top: 5,left: 15,right: 15),
      child: Container(
        width: double.infinity,
        height: 231,
        decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,
        end: Alignment.bottomCenter,colors: [Color(0xFFA772FF),Color(0xFF3C8BD4)]),
        borderRadius: BorderRadius.circular(20)
        ),
      child: const Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.end,children: [
          Padding(
            padding: EdgeInsets.only(right: 20,top: 10),
            child: Text('Mobile Bank',style: TextStyle(
              color: Colors.white,
              fontSize: 28
            ),),
          )
          ],),
        Row(children: [
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Image(image: AssetImage('assets/chip.png')),
              Text('3301 2043 2104 5964',style: TextStyle(
                color: Colors.white,
                fontSize: 28
              ),)
            ],),
          )
        ],),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          Padding(
            padding: EdgeInsets.only(left: 20,bottom: 10),
            child: Text('CHERMEN BEKUZAROV',style: TextStyle(
              color: Colors.white,
              fontSize: 16
            ),),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20,bottom: 10),
            child: Text('12/35',style: TextStyle(
              color: Colors.white,
              fontSize: 16
            ),),
          )
          ],),

      ],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
      ),
    );
  }
}


class OneTransaction extends StatelessWidget {
  String name;
  String lastName;
  String cash;
  OneTransaction({super.key, required this.name,required this.lastName,required this.cash});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          Row(children: [
            Container(width: 50,height: 54,
            decoration: BoxDecoration(color: Color(0xFFEAEAEA),
            borderRadius: BorderRadius.circular(1000)
            ),),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(children: [
                Text(name),
                Text(lastName)
              ],),
            ),
            
          ],),
          Text(cash)
        ]),
      ),
    );
  }
}