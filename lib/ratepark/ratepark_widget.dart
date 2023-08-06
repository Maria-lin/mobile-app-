import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

import 'package:smart_parking/component/sideMenu.dart';
import 'package:smart_parking/config/size_config.dart';
import 'package:smart_parking/flutter_flow/flutter_flow_theme.dart';
import 'package:smart_parking/flutter_flow/flutter_flow_widgets.dart';
import 'package:smart_parking/style/style.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
class RateparkWidget extends StatefulWidget {
  const RateparkWidget({Key? key}) : super(key: key);

  @override
  _RateparkWidgetState createState() => _RateparkWidgetState();
}

class _RateparkWidgetState extends State<RateparkWidget> {
  String? catagoryFiltersValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'noter le pakring ',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).tertiaryColor,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              icon: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'CHOISSISSEZ ',
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowRadioButton(
                      options: [
                        'voiture',
                        'moto',
                        'poids lourd',
                        'Cateogry 1',
                        'Category',
                        'Cateogry 3',
                        'Category 4'
                      ].toList(),
                      onChanged: (value) {
                        setState(() => catagoryFiltersValue = value);
                      },
                      optionHeight: 36,
                      textStyle: FlutterFlowTheme.of(context).bodyText2,
                      selectedTextStyle: FlutterFlowTheme.of(context).bodyText1,
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.vertical,
                      radioButtonColor:
                          FlutterFlowTheme.of(context).tertiaryColor,
                      inactiveRadioButtonColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                    Image.asset(
                      'assets/images/Bleu_Grande_Sur_Illustration_Minimal_Gras_Sweatshirt__capuche_(3).png',
                      width: 5010,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Future.delayed(const Duration(milliseconds: 1000));
                  },
                  text: 'Save Changes',
                  options: FFButtonOptions(
                    width: 300,
                    height: 50,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 300,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
