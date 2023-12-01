import 'package:flutter/cupertino.dart';
import 'package:google_clone/responsive/widgets/web/pagination_buttons.dart';

class Pagination extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(width: double.infinity,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [PaginationButtons(title: "< Prev"),
                                          SizedBox(width: 30,),
                                          PaginationButtons(title: "Next >")],),);
  }
}