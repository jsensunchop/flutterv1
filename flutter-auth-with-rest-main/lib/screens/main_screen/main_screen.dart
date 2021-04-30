import 'package:authwithrest/bloc/auth_bloc/auth.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:authwithrest/style/theme.dart' as Style;

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  //StaggeredTile.extent(2, 130.0),

  //StaggeredTile.extent(1, 250.0),
  StaggeredTile.extent(1, 130.0),
  StaggeredTile.extent(1, 130.0),
  StaggeredTile.extent(1, 130.0),
  StaggeredTile.extent(1, 130.0),
  StaggeredTile.extent(1, 130.0),
  StaggeredTile.extent(1, 130.0),
  //StaggeredTile.extent(2, 120.0),
];

List<Widget> _tiles = const <Widget>[
  const MyItems(
      ("assets/icons/network1_icon.svg"), "Mi Red", 0xff26cb3c, "/third"),
  const MyItems(
      ("assets/icons/wonedero_icon.svg"), "Wonedero", 0xff7297ff, "/eight"),
  const MyItems(("assets/icons/bonus1_icons.svg"), "Invitar amigos", 0xffff3266,
      "/forth"),
  const MyItems(
      "assets/icons/invite1_icon.svg", "Settings", 0xfff4c83f, "/sixth"),
  const MyItems(
      ("assets/icons/office1_icon.svg"), "Mi oficina", 0xff7297ff, "/eight"),
  const MyItems(
      ("assets/icons/catalog1_icon.svg"), "Catalogo", 0xff622F74, 'coupons'),
];

class MyItems extends StatelessWidget {
  const MyItems(this.icon, this.heading, this.color, this.routeName);

  final String icon;
  final String heading;
  final int color;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(12.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Material(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(19.0),
                        child: IconButton(
                          icon: SvgPicture.asset(icon,
                              color: Color.fromRGBO(254, 69, 24, 1)),
                          // color: Colors.white,
                          // iconSize: 30.0,
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, routeName);
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      heading,
                      style: TextStyle(
                        //color: Colors.black87,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      Column(
        children: <Widget>[
          Container(
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //Center Row contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //Center Row contents vertically,
                    children: <Widget>[
                      Card(
                        color: Color.fromRGBO(254, 139, 24, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        margin: EdgeInsets.all(15),
                        shadowColor: Colors.grey,
                        child: Container(
                            color: Color.fromRGBO(254, 139, 24, 1),
                            width: 350,
                            height: 130,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Saldo total",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "\$ 130.898",
                                  style: TextStyle(
                                      fontSize: 45,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Balance",
                            style: TextStyle(
                              color: Color.fromRGBO(254, 69, 24, 1),
                              fontSize: 10.0,
                            ),
                          ),
                          Text(
                            "+ \$ 200.000",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Gastos este mes",
                            style: TextStyle(
                              color: Color.fromRGBO(254, 69, 24, 1),
                              fontSize: 10.0,
                            ),
                          ),
                          Text(
                            "- \$ 100.000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: StaggeredGridView.count(
              crossAxisCount: 3,
              staggeredTiles: _staggeredTiles,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              //staggeredTiles: [

              children: _tiles,
            ),
          ),
        ],
      ),
      Center(child: Text('Search')),
      Center(child: Text('Camera')),
      Center(child: Text('Profile')),
    ];

    //final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://yt3.ggpht.com/yti/ANoDKi5R5eJSjZigdWmIcZKFAtqwG4svMcAAN0Iyvw4j=s108-c-k-c0x00ffffff-no-rj"),
          ),
        ),
        title: Text("AUTH WITH REST"),
        actions: [
          IconButton(
              icon: Icon(EvaIcons.logOutOutline),
              onPressed: () {
                BlocProvider.of<AuthenticationBloc>(context).add(
                  LoggedOut(),
                );
              })
        ],
      ),
      body: tabs[_currentIndex],
      //drawer: buildDrawer(context),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.red,
      currentIndex: _currentIndex,
      //type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/home_icon.svg",
            color: Colors.redAccent,
          ),
          title: Text("home"),
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/profile_icon.svg",
            color: Colors.redAccent,
          ),
          title: Text("Perfil"),
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/settings_icon.svg",
            color: Colors.redAccent,
          ),
          title: Text("Configuración"),
          backgroundColor: Colors.red,
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
