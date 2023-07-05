import 'package:day4/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Flutter UI Day 4",
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/emma.jpg'),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3)
                          ])),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FadeAnimation(
                                1,
                                const Text(
                                  'Emma Watson',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                FadeAnimation(
                                    1.2,
                                    const Text(
                                      '60 Videos',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                    )),
                                SizedBox(
                                  width: 50,
                                ),
                                FadeAnimation(
                                    1.3,
                                    const Text(
                                      '408.5K Subscribers',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(delegate: SliverChildListDelegate([
                Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        FadeAnimation(1.6, const Text("Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.", 
                        style: TextStyle(color: Colors.grey, height: 1.4),)),
                        const SizedBox(height: 40,),
                        FadeAnimation(1.6, 
                          const Text("Born", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),
                        const SizedBox(height: 10,),
                        FadeAnimation(1.6, 
                          const Text("April, 15th 1990, Paris, France", style: TextStyle(color: Colors.grey),)
                        ),
                        const SizedBox(height: 20,),
                        FadeAnimation(1.6, 
                          const Text("Nationality", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),
                        const SizedBox(height: 10,),
                        FadeAnimation(1.6, 
                          const Text("British", style: TextStyle(color: Colors.grey),)
                        ),
                        const SizedBox(height: 20,),
                        FadeAnimation(1.6, 
                          const Text("Videos", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),
                        const SizedBox(height: 20,),
                        FadeAnimation(1.8, Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              myVideos(image: "assets/images/emma-1.jpg"),
                              myVideos(image: "assets/images/emma-2.jpg"),
                              myVideos(image: "assets/images/emma-3.jpg"),
                            ],
                          ),
                        )),
                        SizedBox(height: 120,)
                          ],
                        ),
                      ),
              ])),
            ],
          ),
          Positioned.fill(
            bottom: 45,
            child: Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FadeAnimation(
                2,
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: Align(
                    child: Text('Follow' , style: TextStyle(color: Colors.white),),
                  ),
                )
              ),
            ),
          ))
        ],
      ),
    );
  }
}

Widget myVideos({image}){
  return AspectRatio(aspectRatio: 1.5 /1,
  child: Container(
    margin: EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
    ),
    child: Container(
      decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.3)
        ])
      ),
      child: const Align(
        child: Icon(Icons.play_arrow, color: Colors.white ,size: 70,),
      ),  
    ),
  ),
  );
}