import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appstyle(double size,Color color,FontWeight fw) {
  return GoogleFonts.poppins(fontSize: size,color: color,fontWeight: fw,letterSpacing: 0);
}
TextStyle appstyle1(double size,Color color,FontWeight fw,double ht) {
  return GoogleFonts.poppins(fontSize: size,color: color,fontWeight: fw,height: ht);
}
