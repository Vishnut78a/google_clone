import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_clone/services/api_Services.dart';

import '../colors.dart';
import '../responsive/widgets/web/pagination.dart';
import '../responsive/widgets/web/search_footer.dart';
import '../responsive/widgets/web/search_header.dart';
import '../responsive/widgets/web/search_results_component.dart';
import '../responsive/widgets/web/search_tabs.dart';

class Search_Screen extends StatelessWidget{
  String start;
  String searchQuery;
  Search_Screen({required this.start,required this.searchQuery});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size=MediaQuery.of(context).size;
    return Title(
      color: Colors.blue,
      title: searchQuery,
      child: Scaffold(
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Search_Header(),
            Search_Tabs(),
            Divider(),
            FutureBuilder(future: ApiServices().fetchData(query: "Vishnu"),
                         builder: (context,snapshot){
              if(snapshot.hasData){
                return Column(
                  children: [Container(
                                     padding: EdgeInsets.only(left:size.width<=768?10:185,top: 10),
                                     alignment: Alignment.centerLeft,
                                      child:Text("About ${snapshot.data?['searchInformation']['formattedTotalResults']} results in "
                                          "(${snapshot.data?['searchInformation']['formattedSearchTime']}  seconds)",
                                            style: const TextStyle(fontSize: 15,color: Color(0xff70757A)),) ,),
                            Padding(
                              padding:  EdgeInsets.only(left :size.width<=768?10:190.0,top: 20),
                              child: ListView.builder(
                                shrinkWrap: true,
                                  itemCount: snapshot.data!['items'].length,
                                  itemBuilder: (context,index){
                                return Search_Results_Components(text: snapshot.data?['items'][index]['title'],
                                                                  link: snapshot.data?['items'][index]['formattedUrl'],
                                                                 linkToGo: snapshot.data?['items'][index]['link'],
                                                                desc: snapshot.data?['items'][index]['snippet'],);
                              }),
                            )],);
              }
              return CircularProgressIndicator();
            }),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [TextButton(onPressed: (){
              if(start!='0'){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    Search_Screen(start: (int.parse(start)-10).toString(),searchQuery: searchQuery,)));}},
                child: Text("< Prev",style: TextStyle(color: blueColor),)),
              SizedBox(width: 10,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    Search_Screen(start: (int.parse(start)+10).toString(),searchQuery: searchQuery,)));},
                  child: Text("> Next",style: TextStyle(color: blueColor),)),],),
            Search_Footer()
          ],),
        )
      ),
    );
  }
}