//this is the the client homescreen
//the home sreen features a rounded-bottom header container
//white contains a search bar
//it gives a gist to users on which services are available to find
//listed for them at screen load are best rated shops based on customer ratings
import 'package:flutter/material.dart';
import 'package:newscreens/screens/newbarber/barber_main_screen.dart';

import 'package:newscreens/screens/newshop/shop_about_screen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  //list of category objects
  List<Tags> categories = [
    Tags("images/salon.jpg", "Salon"),
    Tags("images/haircut.jpg", "Hair cut"),
    Tags("images/styling.jpg", "Styling")
  ];
  //list of salon objects
  List<Salons> salons = [
    Salons("images/salon.jpg", "Afias Salon", 4.3,
        "Unisex salon located at Adenta"),
    Salons("images/salon.jpg", "American barbers", 4.2,
        "Unisex Barbering shop located at Tech")
  ];
  //A stack is used to create the aligning effect and overlaying
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //first child of parent stack aligned at bottom container most of the
        //information on the client home screen
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListView(padding: EdgeInsets.zero,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //tags or popular categories
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text("Popular categories",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        height: 95,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            itemBuilder: (buildContext, index) {
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (contex) {
                                      return const BarberMainScreen();
                                    }));
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 70,
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                              image: DecorationImage(image: AssetImage(categories[index].image, ),
                                              fit: BoxFit.cover
                                              )
                                              
                                              )
                                       
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:4.0),
                                          child: Text(categories[index].tagname),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      //best shops
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Best rated salons",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: salons.length,
                            itemBuilder: (buildContext, index) {
                              return SalonCards(
                                  salons[index].image,
                                  salons[index].name,
                                  salons[index].rating,
                                  salons[index].description,
                                  context);
                            }),
                      ),
                      //suggeted
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Suggested for you",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: salons.length,
                            itemBuilder: (buildContext, index) {
                              return SalonCards(
                                  salons[index].image,
                                  salons[index].name,
                                  salons[index].rating,
                                  salons[index].description,
                                  context);
                            }),
                      )
                    ]),
              )),
        ),
        //An aligned containeer at the top ,child of the parent stack
        //it also contains a stack to create the overlay effect
        Align(
          alignment: Alignment.topCenter,
          child: ClipPath(
            clipper: ClipPathClass(),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                color: Colors.white),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ClipPath(
            clipper: ClipPathClass(),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "images/welcome.png",
                          ),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.4)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white.withOpacity(0.4)
                          ),
                          child: Text("Hi Bob,you are welcome ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22)),
                        ),
                        
                        
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white.withOpacity(0.4)
                          ),
                          child: Text("12 am",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//tags model class
class Tags {
  String image;
  String tagname;
  Tags(this.image, this.tagname);
}

//salons model class
class Salons {
  String image;
  String name;
  double rating;
  String description;

  Salons(this.image, this.name, this.rating, this.description);
}

Widget SalonCards(String image, String name, double rating, String description,
    BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (contex) {
        return const AboutShop();
      }));
    },
    child: SizedBox(
        height: 81,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Card(
          elevation:4,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              Container(
                  height: 80,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(
                            image,
                          ),
                          fit: BoxFit.cover))),
              Expanded(
                child: ListTile(
                  title: Row(
                    children: [
                      Text(name),
                      Spacer(),
                      Text(rating.toString(), textAlign: TextAlign.end),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      )
                    ],
                  ),
                  subtitle: Text(description),
                ),
              ),
            ],
          ),
        )),
  );
}
