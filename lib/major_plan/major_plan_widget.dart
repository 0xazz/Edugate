import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_pdf_viewer.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MajorPlanWidget extends StatefulWidget {
  const MajorPlanWidget({Key? key}) : super(key: key);

  @override
  _MajorPlanWidgetState createState() => _MajorPlanWidgetState();
}

class _MajorPlanWidgetState extends State<MajorPlanWidget> {
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
              'Courses',
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
          'Major plan',
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
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: StreamBuilder<List<StudentsRecord>>(
              stream: queryStudentsRecord(
                queryBuilder: (studentsRecord) =>
                    studentsRecord.where('email', isEqualTo: currentUserEmail),
                singleRecord: true,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<StudentsRecord> columnStudentsRecordList = snapshot.data!;
                // Return an empty Container when the document does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final columnStudentsRecord = columnStudentsRecordList.isNotEmpty
                    ? columnStudentsRecordList.first
                    : null;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (columnStudentsRecord!.major == 'se')
                      FlutterFlowPdfViewer(
                        assetPath: 'assets/pdfs/se_plan.pdf',
                        width: MediaQuery.of(context).size.width,
                        height: 530,
                        horizontalScroll: false,
                      ),
                    if (columnStudentsRecord!.major == 'cs')
                      FlutterFlowPdfViewer(
                        assetPath: 'assets/pdfs/cs_plan.pdf',
                        width: MediaQuery.of(context).size.width,
                        height: 530,
                        horizontalScroll: false,
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
