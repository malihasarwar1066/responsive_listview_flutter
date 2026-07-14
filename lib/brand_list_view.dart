import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_view/models.dart';

class BrandListView extends StatelessWidget {
  final List<BrandModel> brands;

  const BrandListView({super.key, required this.brands});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        padding: EdgeInsets.only(left: 16),

        itemBuilder: (context, index) {
          final brand = brands[index];
          return Padding(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Image.network(brand.logoUrl, fit: BoxFit.contain),
                ),
                SizedBox(width: 4),
                Text(
                  brand.name,
                  style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500, fontSize: 13),
                ),




              ],
            ),
          );
        },
      ),
    );
  }
}
