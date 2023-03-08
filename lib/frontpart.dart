// ignore_for_file: prefer_const_constructors, annotate_overrides, override_on_non_overriding_member, avoid_unnecessary_containers, dead_code, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print, unused_local_variable, unused_label

//flutter built apk
import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:feb10uiandapi/apiconfig/apiConnection.dart';
import 'package:feb10uiandapi/model/ActiviesInterestsModel.dart';
import 'package:feb10uiandapi/model/AmenitiesModelResponse.dart';
import 'package:feb10uiandapi/model/ConciergeServicesModel.dart';
import 'package:feb10uiandapi/model/EventModelResponse.dart';
import 'package:flutter/material.dart';

class FrontPartUi extends StatefulWidget {
  const FrontPartUi({super.key});
  @override
  State<FrontPartUi> createState() => _FrontPartUiState();
}

class _FrontPartUiState extends State<FrontPartUi> {
  TextEditingController dateinput = TextEditingController();
  TextEditingController dateInput = TextEditingController();
  var items;

  @override
  String dayFormatter(DateTime date) {
    dynamic dayData =
        '{ "1" : "Mon", "2" : "Tue", "3" : "Wed", "4" : "Thur", "5" : "Fri", "6" : "Sat", "7" : "Sun" }';

    return date.day.toString();
  }

  String monthFormatter(DateTime date) {
    dynamic monthData =
        '{ "1" : "Jan", "2" : "Feb", "3" : "Mar", "4" : "Apr", "5" : "May", "6" : "June", "7" : "Jul", "8" : "Aug", "9" : "Sep", "10" : "Oct", "11" : "Nov", "12" : "Dec" }';

    return json.decode(monthData)['${date.month}'];
  }

  late EventResponseModel eventsResponseModel;
  late AmenitiesModelResponse amenitiesModelResponse;
  late ConciergeServicesModel conciergeServicesModel;
  late ActiviesInterestsModel activiesInterestsModel;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  getData() async {
    try {
      var response = await Dio().get('');
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  List<String> imgList = [
    "assets/dish.jfif",
    "assets/dish.jfif",
    "assets/dish.jfif",
  ];
  List<Model> list1 = [
    Model(
      image: "assets/dish.jfif",
      Month: "Feb",
      Date: "19",
      title: "Day event",
      location: "Jaipur",
    ),
    Model(
      image: "assets/dish.jfif",
      Month: "Feb",
      Date: "19",
      title: "Day event",
      location: "Jaipur",
    ),
    Model(
      image: "assets/dish.jfif",
      Month: "Feb",
      Date: "19",
      title: "Day event",
      location: "Jaipur",
    ),
    Model(
      image: "assets/dish.jfif",
      Month: "Feb",
      Date: "19",
      title: "Day event",
      location: "Jaipur",
    ),
    Model(
      image: "assets/dish.jfif",
      Month: "Feb",
      Date: "19",
      title: "Day event",
      location: "Jaipur",
    ),
  ];
  List<TypeList> list = [
    TypeList(image: "assets/ganpati.png", title: "Kids Play Area"),
    TypeList(image: "assets/ganpati.png", title: "Gym"),
    TypeList(image: "assets/ganpati.png", title: "Yoga Room "),
    TypeList(image: "assets/ganpati.png", title: "4"),
    TypeList(image: "assets/ganpati.png", title: "5"),
    TypeList(image: "assets/ganpati.png", title: "6"),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFe0e0e0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/ganpati.png"),
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Image(
                        image: AssetImage("assets/logocopy3.png"),
                        height: 40,
                        width: 90,
                      ),
                      Text(
                        'Satish Kumar',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('satish123@gmail.com'),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Home'),
              dense: true,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: const Text('About IHMS'),
              dense: true,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: const Text('Concierge Services'),
              dense: true,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Clubs'),
              dense: true,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: const Text('Profile'),
              dense: true,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: const Text('Events/Tickets'),
              dense: true,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: const Text('Events History'),
              dense: true,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: const Text('Suggestion/Feedback'),
              dense: true,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              dense: true,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 5,
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Share App',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage("assets/whatsup.png"),
                        height: 20,
                        width: 20,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Message Us on WhatsApp',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.3,
              width: MediaQuery.of(context).size.height * 0.3,
              color: Color(0xFFf5d993),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Connet with us',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Image(
                    image: AssetImage(
                      "assets/facebook.png",
                    ),
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: AssetImage("assets/instagram.png"),
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: AssetImage("assets/youtube.png"),
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // backgroundColor: Color(0xFF203040),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/dashboard_bg.png",
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/bg_color.png",
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      child: IconButton(
                        onPressed: () {
                          scaffoldKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      child: Image(
                        image: AssetImage("assets/logocopy3.png"),
                        height: 60,
                        width: 100,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.height * 0.5,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Icon(Icons.search),
                      ),
                      // Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          // child: TextField(
                          //   decoration: InputDecoration(
                          //       border: InputBorder.none,
                          //       labelText: 'Enter Name',
                          //       hintText: 'Enter Your Name'),
                          // ),
                          ),

                      Text('Search By Events ....'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 5),
                  child: Text(
                    'POPULAR EVENTS',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                // EVENTS
                FutureBuilder(
                  future: getEventsData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      eventsResponseModel = snapshot.data!;
                      print(
                          "length =====  ${eventsResponseModel.data!.length}");
                      print(
                          "image =====  ${eventsResponseModel.data!.first.image}");
                      return Container(
                        // color: Colors.amber,
                        margin: EdgeInsets.only(left: 10),
                        height: MediaQuery.of(context).size.width * 0.60,
                        child: ListView.builder(
                          itemCount: eventsResponseModel.data!.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.82,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.width *
                                        0.35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(eventsResponseModel
                                            .data![index].image),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    height: 76,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    padding:
                                        EdgeInsets.fromLTRB(20, 10, 10, 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(
                                              10, 10, 10, 10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xFFfbf0d4),
                                          ),
                                          child: eventsResponseModel
                                                      .data![index].multislot ==
                                                  1
                                              ? Container()
                                              // Column(
                                              //   children: [
                                              // Text(
                                              //   monthFormatter(
                                              //     DateTime.parse(
                                              //         eventsResponseModel
                                              //             .data![index]
                                              //             .multislotTime[0].startDate
                                              //             .toString()),
                                              //   ),
                                              // ),
                                              // Text(
                                              //   dayFormatter(
                                              //     DateTime.parse(
                                              //       eventsResponseModel
                                              //             .data![index]
                                              //             .multislotTime[0].startDate
                                              //           .toString(),
                                              //     ),
                                              //   ),
                                              // ),
                                              // Text(
                                              //   DateFormat.d()
                                              //       .format(DateTime.now()),
                                              //   maxLines: 1,
                                              //   overflow: TextOverflow.ellipsis,
                                              //   style: TextStyle(fontSize: 15),
                                              // ),
                                              //   ],
                                              // )
                                              : Column(
                                                  children: [
                                                    Text(
                                                      monthFormatter(
                                                        DateTime.parse(
                                                          eventsResponseModel
                                                              .data![index]
                                                              .startDate
                                                              .toString(),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      dayFormatter(
                                                        DateTime.parse(
                                                          eventsResponseModel
                                                              .data![index]
                                                              .startDate
                                                              .toString(),
                                                        ),
                                                      ),
                                                    ),
                                                    // Text(
                                                    //   DateFormat.d()
                                                    //       .format(DateTime.now()),
                                                    //   maxLines: 1,
                                                    //   overflow: TextOverflow.ellipsis,
                                                    //   style: TextStyle(fontSize: 15),
                                                    // ),
                                                  ],
                                                ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              eventsResponseModel
                                                  .data![index].name,
                                              // list1[index].title!,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Color(0xFF997e39),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_sharp,
                                                  color: Color(0xFF997e39),
                                                  size: 20,
                                                ),
                                                Text(
                                                  eventsResponseModel
                                                      .data![index].location,

                                                  // list1[index].address!,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),

                ///

                FutureBuilder(
                  future: getAmenitiesData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      amenitiesModelResponse = snapshot.data!;
                      print(
                          "length =====  ${amenitiesModelResponse.data!.length}");
                      print(
                          "image =====  ${amenitiesModelResponse.data!.first.image}");
                      return Container(
                        margin: EdgeInsets.all(10),
                        height: 120,
                        child: ListView.builder(
                          itemCount: list.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.15,
                              child: CarouselSlider(
                                items: imgList.map(
                                  (item) {
                                    return Image.asset(
                                      item,
                                      fit: BoxFit.fill,
                                      width: 320,
                                    );
                                  },
                                ).toList(),
                                options: CarouselOptions(
                                    autoPlay: true,
                                    aspectRatio: 2.0,
                                    enlargeCenterPage: true),
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),

                ///
                SizedBox(
                  height: 20,
                ),
                ///////////////////// //yyyy-MM-dd
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'AMENIITES',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.5,
                          color: Color(0xFFb9a779),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'View All',
                          style: TextStyle(
                            color: Color(0xFFb9a779),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //AMENITIES
                FutureBuilder(
                  future: getAmenitiesData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      amenitiesModelResponse = snapshot.data!;
                      print(
                          "length =====  ${amenitiesModelResponse.data!.length}");
                      print(
                          "image =====  ${amenitiesModelResponse.data!.first.image}");
                      return Container(
                        margin: EdgeInsets.all(10),
                        height: 120,
                        child: ListView.builder(
                          itemCount: list.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(15),
                                    height: 50,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.red,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          amenitiesModelResponse
                                              .data![index].image,

                                          // list[index].image!,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 20,
                                    ),
                                    child: Text(
                                      amenitiesModelResponse.data![index].name,

                                      // list[index].title!,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
                //////// AMENITIES
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'CONCIERGE SERVICES',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.5,
                          color: Color(0xFFb9a779),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'View All',
                          style: TextStyle(
                            color: Color(0xFFb9a779),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                ///CONCIERGE SERVICES
                FutureBuilder(
                  future: getConciergeData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      conciergeServicesModel = snapshot.data!;
                      print(
                          "length =====  ${conciergeServicesModel.data!.length}");
                      print(
                          "image =====  ${conciergeServicesModel.data!.first.image}");
                      return Container(
                        margin: EdgeInsets.all(10),
                        height: 120,
                        child: ListView.builder(
                          itemCount: list.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(15),
                                    height: 50,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.red,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          //eventsResponseModel.data![index].image),

                                          conciergeServicesModel
                                              .data![index].image,
                                          // list[index].image!,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 20,
                                    ),
                                    child: Text(
                                      conciergeServicesModel.data![index].name,

                                      // list[index].title!,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),

                ///CONCIERGE SERVICES
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'ACTIVITES & INTERESTS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.5,
                          color: Color(0xFFb9a779),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'View All',
                          style: TextStyle(
                            color: Color(0xFFb9a779),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ////Actitvies & Interests
                FutureBuilder(
                  future: getActiviesData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      activiesInterestsModel = snapshot.data!;
                      print(
                          "length =====  ${activiesInterestsModel.data!.length}");
                      print(
                          "image =====  ${activiesInterestsModel.data!.first.image}");
                      return Container(
                        margin: EdgeInsets.all(10),
                        height: 120,
                        child: ListView.builder(
                          itemCount: list.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(15),
                                    height: 50,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.red,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          //conciergeServicesModel.data![index].name,
                                          activiesInterestsModel
                                              .data![index].image,

                                          // list[index].image!
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 20,
                                    ),
                                    child: Text(
                                      activiesInterestsModel.data![index].name,

                                      // list[index].title!,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),

                ///Actitvies & Interests
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TypeList {
  String? image;
  String? title;

  TypeList({
    required this.image,
    required this.title,
  });
}

class Model {
  String? image;
  String? Month;
  String? Date;
  String? title;
  String? location;
  Model(
      {required this.image,
      required this.Month,
      required this.Date,
      required this.title,
      required this.location});
}
