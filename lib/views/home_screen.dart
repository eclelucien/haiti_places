import 'package:flutter/material.dart';
import 'package:haiti_places/persistentWidget/contestTabHeader.dart';
import 'package:haiti_places/views/details_screen.dart';
import 'package:haiti_places/widgets/appBar.dart';
import 'package:haiti_places/widgets/drawer/custom_drawer.dart';
import 'package:haiti_places/widgets/hotel_listviewtest.dart';
import 'package:haiti_places/widgets/place_list_data.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  ///COMMONS VARIABLES
  final ScrollController _scrollController = ScrollController();
  late final AnimationController animationController;
  List<HotelListData> hotelList = HotelListData.hotelList;
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));

  ///OVERRIDES FUNCTIONS
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  ///FUTURES
  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
          title: Text("Haiti entre vos mains"),
          centerTitle: true,
          backgroundColor: Colors.red),
      body: Stack(
        children: <Widget>[
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Column(
              children: <Widget>[
                GeneralAppBar(),
                Expanded(
                  child: NestedScrollView(
                    controller: _scrollController,
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return <Widget>[
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                Text(""),
                                Icon(Icons.maps_home_work_rounded,
                                    color: Colors.red),
                              ],
                            );
                          }, childCount: 1),
                        ),
                        SliverPersistentHeader(
                          pinned: true,
                          floating: true,
                          delegate: ContestTabHeader(
                            Text("Faites glisser",
                                style: TextStyle(color: Colors.red)),
                          ),
                        ),
                      ];
                    },
                    body: Container(
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: hotelList.length,
                        padding: const EdgeInsets.only(top: 8),
                        itemBuilder: (BuildContext context, int index) {
                          final int count =
                              hotelList.length > 10 ? 10 : hotelList.length;
                          final Animation<double> animation =
                              Tween<double>(begin: 0.0, end: 1.0).animate(
                                  CurvedAnimation(
                                      parent: animationController,
                                      curve: Interval((1 / count) * index, 1.0,
                                          curve: Curves.fastOutSlowIn)));
                          animationController.forward();
                          return HotelListView(
                            callback: ([image, reviews, name, description]) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PlaceDetails(
                                    image: image,
                                    reviews: reviews,
                                    name: name,
                                    description: description,
                                  ),
                                ),
                              );
                            },
                            hotelData: hotelList[index],
                            animation: animation,
                            animationController: animationController,
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
