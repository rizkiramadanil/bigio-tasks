import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:star_wars/domain/entities/films.dart';

class FilmsWidget extends StatelessWidget {
  final Films films;

  const FilmsWidget(this.films, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                films.title,
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              Text(
                'Release Date : ${dateFormat(films.releaseDate.toString())}',
                style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Director : ${films.director}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Producer : ${films.producer}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Episode : ${films.episodeId}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String dateFormat(String date) {
    final DateFormat beforeFormat = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final DateFormat afterFormat = DateFormat('dd MMMM yyyy');
    final DateTime dateTime = beforeFormat.parse(date);
    final String format = afterFormat.format(dateTime);
    return format;
  }
}
