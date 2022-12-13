import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExpectedGPAWidget extends StatefulWidget {
  const ExpectedGPAWidget({
    Key? key,
    this.regc,
  }) : super(key: key);

  final List<DocumentReference>? regc;

  @override
  _ExpectedGPAWidgetState createState() => _ExpectedGPAWidgetState();
}

class _ExpectedGPAWidgetState extends State<ExpectedGPAWidget> {
  Map<DocumentReference?, double> dropDownValueMap = {};
  double? exgpa;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF333333),
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed(
              'GPAPage',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.leftToRight,
                ),
              },
            );
          },
        ),
        title: Text(
          'Expected GPA',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBtnText,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).gray200,
                              borderRadius: BorderRadius.circular(20),
                              shape: BoxShape.rectangle,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: SelectionArea(
                                  child: Text(
                                'Calculate your expected GPA',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .customColor4,
                                      fontSize: 20,
                                    ),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Builder(
                    builder: (context) {
                      final crsrf = widget.regc?.toList() ?? [];
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: crsrf.length,
                        itemBuilder: (context, crsrfIndex) {
                          final crsrfItem = crsrf[crsrfIndex];
                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: StreamBuilder<CoursesRecord>(
                              stream: CoursesRecord.getDocument(crsrfItem),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                final rowCoursesRecord = snapshot.data!;
                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 5, 0),
                                      child: SelectionArea(
                                          child: Text(
                                        rowCoursesRecord.courseid!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor4,
                                              fontSize: 18,
                                            ),
                                      )),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            75, 0, 20, 0),
                                        child: FlutterFlowDropDown<double>(
                                          initialOption:
                                              dropDownValueMap[crsrfItem] ??=
                                                  4.00,
                                          options: [
                                            4.00,
                                            3.75,
                                            3.50,
                                            3.00,
                                            2.50,
                                            2.00,
                                            1.50,
                                            1.00,
                                            0.00
                                          ],
                                          optionLabels: [
                                            'A+',
                                            'A',
                                            'B+',
                                            'B',
                                            'C+',
                                            'C',
                                            'D+',
                                            'D',
                                            'F'
                                          ],
                                          onChanged: (val) async {
                                            setState(() =>
                                                dropDownValueMap[crsrfItem] =
                                                    val!);
                                            setState(() {
                                              setState(() => FFAppState()
                                                  .addToExpCreds(
                                                      rowCoursesRecord.hours!));
                                              setState(() => FFAppState()
                                                  .addToExpGrades(
                                                      dropDownValueMap[
                                                          crsrfItem]!));
                                            });
                                          },
                                          width: 20,
                                          height: 40,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor4,
                                                fontSize: 12,
                                              ),
                                          hintText: 'Grade',
                                          fillColor: Colors.white,
                                          elevation: 2,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .customColor4,
                                          borderWidth: 0,
                                          borderRadius: 20,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 4, 12, 4),
                                          hidesUnderline: true,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.7, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              exgpa = await actions.expGpa(
                                FFAppState().expGrades.toList(),
                                FFAppState().expCreds.toList(),
                              );

                              setState(() {});
                            },
                            text: 'Calculate',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: FlutterFlowTheme.of(context).customColor3,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).gray200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Visibility(
                          visible: exgpa != null,
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: SelectionArea(
                                child: Text(
                              formatNumber(
                                exgpa,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .customColor4,
                                    fontSize: 18,
                                  ),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    setState(() {
                      FFAppState().expGrades = [];
                    });
                  },
                  text: 'clear',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFFF1EEEE),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
