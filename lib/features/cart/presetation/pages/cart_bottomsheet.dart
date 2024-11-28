import 'package:assignment_1/core/app_pallate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartBottomsheet extends StatelessWidget {
  const CartBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: AppPallate.lightSurface,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(13), topRight: Radius.circular(13))),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: AppPallate.lightSurface, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 10,top: 10),
                child: Text('Amount Price', style: GoogleFonts.lato())),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text('₹3805.3',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold, fontSize: 20))),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                      color: AppPallate.darkPink,
                      borderRadius: BorderRadius.circular(13)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Check Out',
                        style: GoogleFonts.lato(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 6),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Text('5',
                              style: GoogleFonts.lato(
                                  color: AppPallate.darkPink,
                                  fontWeight: FontWeight.w900)))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
