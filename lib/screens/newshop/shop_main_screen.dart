//This is the shops main screen .This is what
//the shop also has bottom navs for a
//dashboad of important business information

import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:theshave/screens/newshop/shop_about_screen.dart';
import 'package:newscreens/screens/newshop/shop_appointments_screen.dart';
import 'package:newscreens/screens/newshop/shop_clients_screen.dart';
import 'package:newscreens/screens/newshop/shop_dashboard_screen.dart';

class ShopMainScreen extends StatefulWidget {
  const ShopMainScreen({Key? key}) : super(key: key);

  @override
  ShopMainScreenState createState() => ShopMainScreenState();
}

class ShopMainScreenState extends State<ShopMainScreen> {
  //BuildContext context =ScaffoldState().context;
  GlobalKey<ScaffoldState> scaffolKey = GlobalKey<ScaffoldState>();

  int index = 0;
  bool showsearch = true;
  List<Widget> pages = [
    //dashboard
    Dashboard(),
    Appointments(),
    ShopClients(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              key: scaffolKey,
           
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
              endDrawer: Drawer(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Material(
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          
                         DrawerHeader(
                           decoration:BoxDecoration(
                             color:Colors.lightBlue[100]
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(2.0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: SizedBox(
                              height: 90,
                              width: 90,
                              child: CircleAvatar(
                                backgroundImage:AssetImage("images/welcome.png")
                              )         ),
                          
                                        ),
                    
                                        
                                        Expanded(
                                          child: ListTile(
                                            title: Text("Doe Roberts",style:TextStyle(fontWeight: FontWeight.bold)),
                                           
                                       
                                                ),
                                        ),
                                                     
                                       Expanded(
                                         child: ListTile(title: Text("robertdoe60@gmail.com",style:TextStyle(fontWeight: FontWeight.bold)
                                                )
                                                
                                                ),
                                       )],
                             ),
                           ),
                         ),
                           
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                "Account Settings",
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ),
                             SizedBox(
                              height: 10,
                            ),
                            ListTile(
                      leading: SizedBox(
                        height: 70,
                        width: 70,
                        child: CircleAvatar(
                            backgroundColor: Colors.red[200],
                            child: Icon(Icons.payments, color: Colors.white)),
                      ),
                      title: Text(
                        "Cards",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      trailing: InkWell(
                        highlightColor:Colors.lightBlue[50],
                        splashColor:Colors.lightBlue[100] ,
                        enableFeedback: true,
                        borderRadius: BorderRadius.circular(50),
                        onTap:(){},
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                            ),
                             SizedBox(
                              height: 10,
                            ),
                            ListTile(
                      leading: SizedBox(
                        height: 70,
                        width: 70,
                        child: CircleAvatar(
                            backgroundColor: Colors.amber,
                            child: Icon(Icons.notifications, color: Colors.white)),
                      ),
                      title: Text(
                        "Job requests",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      trailing:  InkWell(
                        highlightColor:Colors.lightBlue[50],
                        splashColor:Colors.lightBlue[100] ,
                        enableFeedback: true,
                        borderRadius: BorderRadius.circular(50),
                        onTap:(){},
                        child: Icon(Icons.arrow_forward_ios),
                      )
                            ),
                             SizedBox(
                              height: 10,
                            ),
                            ListTile(
                      leading: SizedBox(
                        height: 70,
                        width: 70,
                        child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.history, color: Colors.white)),
                      ),
                      title: Text("My barbers",
                          style:
                              TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      trailing: InkWell(
                        highlightColor:Colors.lightBlue[50],
                        splashColor:Colors.lightBlue[100] ,
                        enableFeedback: true,
                        borderRadius: BorderRadius.circular(50),
                        onTap:(){},
                        child: Icon(Icons.arrow_forward_ios),
                      )
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Padding(
                             padding: const EdgeInsets.only(left: 40),
                              child: Text("My Account", style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal)),
                            ),
                             SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(20)
                                  ),
                                  tileColor: Colors.lightBlue[50],
                      title: TextButton(onPressed: () {}, child: Text("Sign Out"))),
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                ),
        
              //shop has a dashboard,sees appointments and a
              //profile to edit to suit the business
        
              bottomNavigationBar: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.grey,
                  currentIndex: index,
                  onTap: (newindex) {
                    setState(() {
                      index = newindex;
                      //index > 0 ? showsearch = false : showsearch = true;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: "Dashboard"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.history), label: "Appointments"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: "Clients"),
                  ]),
              body: pages.elementAt(index)),
        ));
  }
}

//each navigation screen is built in a different file
//for easy file handling
//
