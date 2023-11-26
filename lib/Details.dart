import 'package:commerce/prodect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Home.dart';
import 'package:commerce/modal/button.dart';



class Details extends StatefulWidget {
  const Details({super.key, required Product product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<Color> BtnColor=[
    const Color(0xffF6625E),
    const Color(0xff836DB8),
    const Color(0xffDECB9C),
    Colors.white,
  ];
  int BtnIndex=0;
  List<String> imagePath=[
    ('assets/images/ps4_console_white_1.png'),
    ('assets/images/ps4_console_white_2.png'),
    ('assets/images/ps4_console_white_3.png'),
    ('assets/images/ps4_console_white_4.png'),
  ];
  int _Index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: IconButton(
                      iconSize: 30,
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const Home()));
                      },
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 50.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Text(
                          '4.8',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset(imagePath[_Index],height: 250,
                width: 250,
              ),
              const SizedBox(height: 10.0),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
                List.generate(imagePath.length, (index) =>
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _Index=index;
                        });
                      },
                      child: Container(height: 60, width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: _Index== index? Colors.deepOrangeAccent: Colors.transparent),
                          borderRadius: BorderRadius.circular(15.0),

                        ),
                        child: Image.asset(imagePath[index],),
                      ),
                    )
                ),

              ),
              const SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10.0),
                          const Text(
                            'Wireless Controller for PS4',
                            style:
                            TextStyle(color: Colors.black, fontSize: 20.0),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 50.0),
                          Text(
                            'Wireless Controller for PS4 gives you what \n you want in your gaming from over precision \n control your games to sharing ... ',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 15.0),
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            children: [
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                    },
                                    child: const Text(
                                      'See More Detail',
                                      style: TextStyle(
                                          color: Colors.deepOrangeAccent,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.deepOrangeAccent),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                      },
                                      icon: SvgPicture.asset(
                                        'assets/icons/arrow_right.svg',
                                        color: Colors.deepOrangeAccent,
                                      ))
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: const Color(0xffF5F6F9),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Row(
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children:
                                  List.generate(BtnColor.length, (index) =>
                                      ElevatedButton(onPressed: (){
                                        setState(() {
                                          BtnIndex= index;
                                        });
                                      },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: BtnColor[index],
                                          shape: CircleBorder(side: BorderSide(
                                              color: BtnIndex == index? Colors.deepOrangeAccent : Colors.transparent)
                                          ),
                                        ), child: null,
                                      ),

                                  ),
                                ),

                                const SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.circular(30.0)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove),
                                      color: Colors.deepOrangeAccent),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.circular(30.0)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add),
                                      color: Colors.deepOrangeAccent),
                                ),
                              ],
                            ),

                          ),

                          const SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: ElevatedButton(
                              style: buttonPrimary,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()));
                              },
                              child: const Text(
                                'Add To Cart',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],

                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
