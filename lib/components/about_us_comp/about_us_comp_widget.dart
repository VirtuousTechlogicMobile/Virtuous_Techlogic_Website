import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'about_us_comp_model.dart';
export 'about_us_comp_model.dart';

class AboutUsCompWidget extends StatefulWidget {
  const AboutUsCompWidget({
    super.key,
    required this.text,
    required this.richText1,
    required this.richText2,
    required this.richText3,
    required this.text2,
  });

  final String? text;
  final String? richText1;
  final String? richText2;
  final String? richText3;
  final String? text2;

  @override
  State<AboutUsCompWidget> createState() => _AboutUsCompWidgetState();
}

class _AboutUsCompWidgetState extends State<AboutUsCompWidget> {
  late AboutUsCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutUsCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AboutUsImagesRecord>>(
      stream: queryAboutUsImagesRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<AboutUsImagesRecord> containerAboutUsImagesRecordList =
            snapshot.data!;

        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final containerAboutUsImagesRecord =
            containerAboutUsImagesRecordList.isNotEmpty
                ? containerAboutUsImagesRecordList.first
                : null;
        return Container(
          decoration: const BoxDecoration(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectionArea(
                        child: Text(
                      valueOrDefault<String>(
                        widget.richText1,
                        'richText1',
                      ),
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displayMediumFamily,
                                fontSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 30.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 48.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 48.0;
                                  } else {
                                    return 48.0;
                                  }
                                }(),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .displayMediumFamily),
                              ),
                    )),
                    SelectionArea(
                        child: Text(
                      valueOrDefault<String>(
                        widget.richText2,
                        'richText2',
                      ),
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displayMediumFamily,
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 30.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 48.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 48.0;
                                  } else {
                                    return 48.0;
                                  }
                                }(),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .displayMediumFamily),
                              ),
                    )),
                    SelectionArea(
                        child: Text(
                      valueOrDefault<String>(
                        widget.richText3,
                        'richText3',
                      ),
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displayMediumFamily,
                                fontSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 30.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 48.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 48.0;
                                  } else {
                                    return 48.0;
                                  }
                                }(),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .displayMediumFamily),
                              ),
                    )),
                  ].divide(const SizedBox(width: 5.0)),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: SelectionArea(
                        child: Text(
                      widget.text!,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelLargeFamily),
                          ),
                    )),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: SelectionArea(
                        child: Text(
                      widget.text2!,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelLargeFamily),
                          ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 30.0, 5.0, 5.0),
                  child: MasonryGridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 1;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 1;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 2;
                        } else {
                          return 2;
                        }
                      }(),
                    ),
                    crossAxisSpacing: 28.0,
                    mainAxisSpacing: 30.0,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return [
                        () => ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: CachedNetworkImage(
                                fadeInDuration: const Duration(milliseconds: 100),
                                fadeOutDuration: const Duration(milliseconds: 100),
                                imageUrl:
                                    containerAboutUsImagesRecord!.squareImages,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: CachedNetworkImage(
                                fadeInDuration: const Duration(milliseconds: 100),
                                fadeOutDuration: const Duration(milliseconds: 100),
                                imageUrl: containerAboutUsImagesRecord!
                                    .ractangleImage1,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: CachedNetworkImage(
                                fadeInDuration: const Duration(milliseconds: 100),
                                fadeOutDuration: const Duration(milliseconds: 100),
                                imageUrl: containerAboutUsImagesRecord!
                                    .ractangleImage2,
                                fit: BoxFit.cover,
                              ),
                            ),
                      ][index]();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
