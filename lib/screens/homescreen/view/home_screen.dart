import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:randomuserapi/screens/homescreen/model/home_model.dart';
import 'package:randomuserapi/screens/homescreen/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).JsonParsing();
  }

  @override
  Widget build(BuildContext context) {
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF193552),
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.menu),
          backgroundColor: Color(0XFF193552),
          title: Text("Random User"),
        ),
        body: homeProviderTrue!.userModel == null
            ? CircularProgressIndicator()
            : Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.amber, width: 2.5)),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                                "${homeProviderTrue!.userModel!.results[0].picture.large}"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "${homeProviderTrue!.userModel!.results[0].name.title}.${homeProviderTrue!.userModel!.results[0].name.first} ${homeProviderTrue!.userModel!.results[0].name.last}",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Nationality : ${homeProviderTrue!.userModel!.results[0].location.country}",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "E-mail : ${homeProviderTrue!.userModel!.results[0].email}",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Age : ${homeProviderTrue!.userModel!.results[0].dob.age}",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Phone : ${homeProviderTrue!.userModel!.results[0].phone}",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address : ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Container(
                              width: 269,
                              child: Text(
                                "${homeProviderTrue!.userModel!.results[0].location.street.number},${homeProviderTrue!.userModel!.results[0].location.street.name},${homeProviderTrue!.userModel!.results[0].location.city}-${homeProviderTrue!.userModel!.results[0].location.postcode},${homeProviderTrue!.userModel!.results[0].location.state},${homeProviderTrue!.userModel!.results[0].location.country}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 480,
                    left: -170,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    top: 500,
                    left: 5,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    top: 500,
                    left: 120,
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    top: 470,
                    left: 250,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    top: 650,
                    left: 100,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    top: 560,
                    left: 100,
                    child: InkWell(
                      onTap: () {
                        homeProviderTrue!.JsonParsing();
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0XFF193552),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Get It Now",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 630,
                    left: 10,
                    child: Container(
                      height: 60,
                      width: 340,
                      decoration: BoxDecoration(
                        color: Color(0XFF193552),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0XFFFF5252),
                                ),
                                child: Icon(
                                  Icons.home,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                height: 4,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Color(0XFFFF5252),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0XFF4CAF50),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0XFFA67794),
                            ),
                            child: Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
