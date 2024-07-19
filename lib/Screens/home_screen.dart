import 'package:coffee_shop/Screens/items.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
//  TabController(length: 3, vsync: this);
  // TabController _tabController=TabController(length: 3, vsync: this, );
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    _tabController.addListener(() {});

    super.initState();
  }

  _tabHandleSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            child: ListView(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.sort_rounded),
                    Icon(
                      Icons.notifications,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text("It's a Great Day for a Coffee",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    )

                    //  Theme.of(context).textTheme.displaySmall!.copyWith(
                    //       color: Colors.white,
                    //       fontSize: 24,
                    //     ),
                    ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 50, 54, 56),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide.none),
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                          ),
                          hintText: "Find Your Coffee",
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.white)),
                    ),
                  ),
                ),

                TabBar(
                    unselectedLabelColor: Colors.white,
                    controller: _tabController,
                    isScrollable: false,
                    labelColor: const Color(0xffE57734),
                    indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(
                      width: 2,
                      color: Color(0xffE57734),
                    )),
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                    tabs: const [
                      Tab(text: "Cold Coffee"),
                      Tab(text: "Cappuiccino"),
                      Tab(text: "Americanno"),
                    ]),
                const SizedBox(
                  height: 10,
                ),
                // These are tabbar view
                Center(
                    child: [
                  ItemWidget(),
                  ItemWidget(),
                  ItemWidget()
                ][_tabController.index]),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Color(0xff212325),
            
          ),
          child: BottomNavigationBar(
    
            selectedItemColor: Color(0xffE57734),
            unselectedItemColor: Colors.white,
            items:  [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled,size: 30,),
                label: ""
              ),
              BottomNavigationBarItem(icon: Icon( Icons.favorite,size: 30,),
              label: ""
                
                ),
                BottomNavigationBarItem(icon: Icon( Icons.notifications,size: 30,),
                label: ""
                
                ),
                BottomNavigationBarItem(icon: Icon( Icons.person, size: 30,),
                label: ""
                
                ), 
            ],
          ),
        ));
  }
}
