//This is the client home screen.It has bottom navigations
//the home nav,the near by nav,the appointments nav and profile nav
//The home screen has been put up to make it easy for the user
//to be able to easily find a service
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newscreens/screens/NewClient/client_appointment_screen.dart';
//import 'package:theshave/screens/NewClient/client_chat_screen.dart';
import 'package:newscreens/screens/NewClient/client_home_screen.dart';
import 'package:newscreens/screens/NewClient/client_saved_screen.dart';
//import 'package:newscreens/screens/NewClient/client_profile_screen.dart';
import 'package:newscreens/screens/search_delegate.dart';

//here,we begin with our main screen
//and oh yes we have a drawer
class ClientMainScreen extends StatefulWidget {
  const ClientMainScreen({Key? key}) : super(key: key);

  @override
  _ClintMainScreenState createState() => _ClintMainScreenState();
}

class _ClintMainScreenState extends State<ClientMainScreen> {
  //BuildContext context =ScaffoldState().context;
  GlobalKey<ScaffoldState> scaffolKey = GlobalKey<ScaffoldState>();
  //List<String> titles = ["", "Payment", "Notifications", "History"];
  int index = 0;
  bool showsearch = true;
  List<Widget> pages = [
    homeScreen(),
    Align(
        alignment: Alignment.bottomCenter, child: Text("Client nearby screen")),
   ClientSaved(),
    ClientAppointments(),
   
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
                actions: [
                  IconButton(
                      onPressed: () {
                        showSearch(context: context, delegate: PerformSearch());
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ))
                ],
              ),
              drawer: Drawer(
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
                                          title: Text("Doe Roberts",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                         
                                     
                                              ),
                                      ),
                                                   
                                     Expanded(
                                       child: ListTile(title: Text("robertdoe60@gmail.com",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )
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
                              "Dashboard",
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
                      "Payments",
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
                      "Appointments",
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
                    title: Text("History",
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
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.shifting,
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
                        icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.place), label: "Near by"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.inbox), label: "Saved"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.history), label: "Appointments"),
                   
                  ]),
              body: pages.elementAt(index)),
        ));
  }
}

//All screens for the bottom nav are built in different in their separate files


class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String name = "Name", mail = "a@gmail.com", phone = "0271302702";
  TextEditingController editname = TextEditingController();
  TextEditingController editmail = TextEditingController();
  TextEditingController editphone = TextEditingController();

  void initState() {
    super.initState();

    editname.addListener(() {
      editname.text = name;
    });
    editmail.addListener(() {
      editmail.text = mail;
    });
    editphone.addListener(() {
      editphone.text = phone;
    });

    editname.text = name;
    editmail.text = mail;
    editphone.text = phone;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Edit Profile"),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      
      body: Column(
        children: [
          //Top container
          SizedBox(height: 60),
          Stack(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  child: Text("E"),
                ),
              ),
              Positioned(
                  right: 5,
                  bottom: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_enhance, size: 40
                          ),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("Name"),
              subtitle: TextField(
                onSubmitted: (newname) {
                    setState(() {
                      name = newname;
                    });
                  },
                  controller: editname,
                  autofocus: true,
                  decoration: InputDecoration()),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("Email"),
              subtitle: TextField(
                  onSubmitted: (newmail) {
                    setState(() {
                      mail = newmail;
                    });
                  },
                  controller: editname,
                  autofocus: true,
                  decoration: InputDecoration()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("Phone"),
              subtitle: TextField(
                  onSubmitted: (newphone) {
                    setState(() {
                      phone = newphone;
                    });
                  },
                  controller: editname,
                  autofocus: true,
                  decoration: InputDecoration(
                  
                  )),
                  
            ),
          ),

          SizedBox(
            height: 20,

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
               height: 50,
                          width: MediaQuery.of(context).size.width*0.4,
                          child: ElevatedButton(
                              onPressed: () {
                               
                              },
                              child: Text("Save ")),
            ),
          )
        ],
      ),
    );
  }
}
