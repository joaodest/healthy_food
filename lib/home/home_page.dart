import 'package:flutter/material.dart';
import 'package:healthy_food/consts.dart';
import 'package:healthy_food/widget/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF21BFBD),
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          iconSize: 20,
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 40),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: const [
                    Text(
                      'Healthy',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'food',
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 35,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 45, left: 15),
                  child: Container(
                      margin: const EdgeInsets.all(12),
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        itemBuilder: ((context, index) => SizedBox(
                              height: 80,
                              child: Card(
                                elevation: 0,
                                child: ProductWidget(
                                  img: 'assets/plate1.jpeg',
                                  name: 'Salmon Bowl',
                                  price: 24,
                                ),
                              ),
                            )),
                        itemCount: 4,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
