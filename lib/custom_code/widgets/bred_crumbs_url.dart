// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class BredCrumbsUrl extends StatefulWidget {
  const BredCrumbsUrl({
    super.key,
    this.width,
    this.height,
    this.webName,
    this.pageName,
    this.title,
    this.webOnPressEvent,
    this.bredcrumbsIcon,
    this.pageOnPressevent,
    this.webColor,
    this.pageColor,
    this.titleColor,
    this.bredcrumbColor,
  });

  final double? width;
  final double? height;
  final String? webName;
  final String? pageName;
  final String? title;
  final Future Function()? webOnPressEvent;
  final String? bredcrumbsIcon;
  final Future Function()? pageOnPressevent;
  final Color? webColor;
  final Color? pageColor;
  final Color? titleColor;
  final Color? bredcrumbColor;

  @override
  State<BredCrumbsUrl> createState() => _BredCrumbsUrlState();
}

class _BredCrumbsUrlState extends State<BredCrumbsUrl> {
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: () async {
              await widget.webOnPressEvent!();
            },
            child: Text(
              widget.webName ?? 'webname',
              style: FlutterFlowTheme.of(context)
                  .labelLarge
                  .override(
                    fontFamily: 'Raleway',
                    color: widget.webColor,
                    letterSpacing: 0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey('Raleway'),
                  )
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Text(
            widget.bredcrumbsIcon ?? '/',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                  letterSpacing: 0,
                  color: widget.bredcrumbColor,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineSmallFamily),
                ),
          ),
          GestureDetector(
            onTap: () async {
              await widget.pageOnPressevent!();
            },
            child: Text(
              widget.pageName ?? 'pagename',
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Raleway',
                    color: widget.pageColor,
                    letterSpacing: 0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey('Raleway'),
                  ),
            ),
          ),
          Text(
            widget.bredcrumbsIcon ?? '/',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                  letterSpacing: 0,
                  color: widget.bredcrumbColor,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineSmallFamily),
                ),
          ),
          AutoSizeText(
            valueOrDefault<String>(widget.title ?? 'title', 'title'),
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Raleway',
                  color: widget.titleColor,
                  letterSpacing: 0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey('Raleway'),
                ),
          ),
        ].divide(SizedBox(width: 20)),
      ),
    );
  }
}
