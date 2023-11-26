import 'package:commerce/prodect.dart';
import 'package:commerce/prodectCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Details.dart';
import 'PopularProducts.dart';
import 'Special.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color colro = const Color(0xffFFEADC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(height: 45),
                    Expanded(
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search product',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Badge(
                            label: Text('3'),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 105.0,
                      width: 380.0,
                      decoration: BoxDecoration(
                        color: Colors.purple[900],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'A Summer Surprise \n ',
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Cashback 20%',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30.0)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffFFEADC),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/Flash Icon.svg'),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffFFEADC),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/Bill Icon.svg'),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffFFEADC),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/Game Icon.svg'),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffFFEADC),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/Gift Icon.svg'),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffFFEADC),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/Discover.svg'),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Flash \n Deal ',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      'Bill ',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      'Game ',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      'Daily \n Gift ',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      'More ',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],

                ),
                Special(),
                Container(height: 20,),
                PopularProducts(),

 ],),),),),);
  }

}
