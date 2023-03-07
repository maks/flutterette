import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

/// Google Fonts package has no way of asking for a font via a String
/// and without reflection we need to aps strings to functions in the package
/// Need to find way to code gen for all fonts but for now a selection of most
/// popular per: https://fonts.google.com/analytics and some of my personal favs

Map<String, TextStyle Function({TextStyle textStyle})> fontMap = {
  'mcLaren': GoogleFonts.mcLaren,
  'pacifico': GoogleFonts.pacifico,
  'roboto': GoogleFonts.roboto,
  'robotoMono': GoogleFonts.robotoMono,
  'ubuntu': GoogleFonts.ubuntu,
  'ubuntuMono': GoogleFonts.ubuntuMono,
  'openSans': GoogleFonts.openSans,
  'lato': GoogleFonts.lato,
  'slabo27px': GoogleFonts.slabo27px,
  'oswald': GoogleFonts.oswald,
  'sourceSansPro': GoogleFonts.sourceSansPro,
  'sourceSerifPro': GoogleFonts.sourceSerifPro,
  'sourceCodePro': GoogleFonts.sourceCodePro,
  'montserrat': GoogleFonts.montserrat,
  'pTSans': GoogleFonts.ptSans,
  'pTSansNarrow': GoogleFonts.ptSansNarrow,
  'pTSerif': GoogleFonts.ptSerif,
  'raleway': GoogleFonts.raleway,
  'lora': GoogleFonts.lora,
  'merriweather': GoogleFonts.merriweather,
  'notoSans': GoogleFonts.notoSans,
  'playfairDisplay': GoogleFonts.playfairDisplay,
  'poppins': GoogleFonts.poppins,
  'arimo': GoogleFonts.arimo,
  'titilliumWeb': GoogleFonts.titilliumWeb
};
