import 'package:advanced_concept/src/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../custom_animation.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final animationsMap = {
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.ms,
            duration: 600.ms,
            begin: 0,
            end: 1,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.ms,
            duration: 600.ms,
            begin: const Offset(20, 0),
            end: const Offset(0, 0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.ms,
            duration: 600.ms,
            begin: 0,
            end: 1,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.ms,
            duration: 600.ms,
            begin: const Offset(40, 0),
            end: const Offset(0, 0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.ms,
            duration: 600.ms,
            begin: 0,
            end: 1,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.ms,
            duration: 600.ms,
            begin: const Offset(50, 0),
            end: const Offset(0, 0),
          ),
        ],
      ),
    };

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple.shade50,
              Colors.deepPurpleAccent.shade100
              // FlutterFlowTheme.of(context).accent1,
              // FlutterFlowTheme.of(context).primary
            ],
            stops: [0.3, 1],
            begin: AlignmentDirectional(1, -1),
            end: AlignmentDirectional(-1, 1),
          ),
        ),
        // alignment: const AlignmentDirectional(0, 0),
        child: Align(
          alignment: const AlignmentDirectional(0, -1),
          child: Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 530,
            ),
            decoration: const BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                  child: const Text(
                    "Your Mafuta account has been created successfully and your profile is under review`qqq",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                    // style: FlutterFlowTheme.of(context).labelMedium.override(
                    //   fontFamily: 'Plus Jakarta Sans',
                    //   letterSpacing: 0,
                    // ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation']!),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                  child: TextFormField(
                    // controller: _model.emailAddressController,
                    // focusNode: _model.emailAddressFocusNode,
                    // autofocus: true,
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email Address",
                      // labelStyle:
                      // FlutterFlowTheme.of(context).labelMedium.override(
                      //   fontFamily: 'Plus Jakarta Sans',
                      //   letterSpacing: 0,
                      // ),
                      hintText: " Please enter a valid email...",
                      // hintStyle:
                      // FlutterFlowTheme.of(context).labelMedium.override(
                      //   fontFamily: 'Plus Jakarta Sans',
                      //   letterSpacing: 0,
                      // ),
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: FlutterFlowTheme.of(context).alternate,
                      //     width: 2,
                      //   ),
                      //   borderRadius: BorderRadius.circular(12),
                      // ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: FlutterFlowTheme.of(context).primary,
                      //     width: 2,
                      //   ),
                      //   borderRadius: BorderRadius.circular(12),
                      // ),
                      // errorBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: FlutterFlowTheme.of(context).error,
                      //     width: 2,
                      //   ),
                      //   borderRadius: BorderRadius.circular(12),
                      // ),
                      // focusedErrorBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: FlutterFlowTheme.of(context).error,
                      //     width: 2,
                      //   ),
                      //   borderRadius: BorderRadius.circular(12),
                      // ),
                      // filled: true,
                      // fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                    ),
                    // style: FlutterFlowTheme.of(context).bodyMedium.override(
                    //   fontFamily: 'Plus Jakarta Sans',
                    //   letterSpacing: 0,
                    // ),
                    // cursorColor: FlutterFlowTheme.of(context).primary,
                    // validator: _model.emailAddressControllerValidator
                    //     .asValidator(context),
                  ).animateOnPageLoad(
                      animationsMap['textFieldOnPageLoadAnimation']!),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text("Create Account"),
                  ).animateOnPageLoad(
                      animationsMap['buttonOnPageLoadAnimation']!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
