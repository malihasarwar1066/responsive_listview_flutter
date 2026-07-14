import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),

              padding: EdgeInsets.symmetric(horizontal: 16),

              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey[400], size: 26),
                  SizedBox(width: 10),
                  Text(
                    'Search your car',
                    style: TextStyle(color: Colors.grey[400], fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
           SizedBox(width: 4),
           Container(
            height: 55,
            width:55 ,
            decoration: const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            child: const Icon(Icons.tune, color: Colors.white),

           )


        ],
      ),
    );
  }
}
