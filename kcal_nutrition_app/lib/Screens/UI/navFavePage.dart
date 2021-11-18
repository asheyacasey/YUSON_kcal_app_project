import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cardsRecipe.dart';
import 'cardsview.dart';

class navFavePage extends StatefulWidget {
  @override
  _faveState createState() => _faveState();

}

class TabPair {
  final Tab tab;
  final Widget view;
  TabPair({required this.tab, required this.view});

}



class _faveState extends State<navFavePage>  with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<TabPair> TabPairs = [


    TabPair(
      tab: Tab(
        text: 'Foods',
      ),
      view: cards1(),
    ),

    TabPair(
      tab: Tab(
        text: 'Recipes',
      ),
        view: cards2(),
    )
  ];


  @override
  void initState() {
    _tabController = TabController(length: TabPairs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context)
  {


    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [

                Container(
                  height: 50,
                  width: 300,
                    child: Center(
                        child: Text('Favorites',  style: GoogleFonts.quicksand(  fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none ))
                    )
                ),

                SizedBox(height: 10,),

                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular( 15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TabBar(
                        controller: _tabController,

                        indicator: BoxDecoration( borderRadius: BorderRadius.circular(15.0), color: Color(0xff56c264),),
                        labelStyle: GoogleFonts.quicksand(  fontSize: 15, fontWeight: FontWeight.bold) ,
                        labelColor: Colors.white,
                        unselectedLabelColor: Color(0xff56c264),
                        tabs: TabPairs.map((tabPair) => tabPair.tab).toList()),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                      controller: _tabController,
                      children: TabPairs.map((tabPair) => tabPair.view).toList(),

                  )

                  ,
                ),
              ],
            )
        )
    );
  }
}

class cards1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: cardsView(),
    );
  }
}

class cards2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: cardsRecipe(),
    );
  }
}