// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:share_plus/share_plus.dart';

class BlogShare extends StatefulWidget {
  const BlogShare({
    super.key,
    this.width,
    this.height,
    required this.blogRef,
    required this.title,
    this.icon,
  });

  final double? width;
  final double? height;
  final DocumentReference blogRef;
  final String title;
  final Widget? icon;

  @override
  State<BlogShare> createState() => _BlogShareState();
}

class _BlogShareState extends State<BlogShare> {
  void _shareBlog() {
    final String blogUrl =
        'https://virtuoustechlogic.com/individualBlogPage?blogRef=${widget.blogRef.id}&blogTitle=${Uri.encodeComponent(widget.title)}';
    Share.share(blogUrl);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _shareBlog,
      child: Container(
          width: MediaQuery.sizeOf(context).width * 0.03,
          height: MediaQuery.sizeOf(context).width * 0.03,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
          alignment: AlignmentDirectional(0, 0),
          child: widget.icon),
    );
  }
}
