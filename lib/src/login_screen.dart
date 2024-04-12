import 'package:advanced_concept/src/forget_password.dart';
import 'package:advanced_concept/src/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../custom_animation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
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
          begin: const Offset(0, 20),
          end: const Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.9, 0.9),
          end: const Offset(1, 1),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
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
          begin: const Offset(0, 40),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
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
          begin: const Offset(0, 50),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: const Offset(0, 40),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: const Offset(0, 60),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 400.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 600.ms,
          begin: const Offset(0, 80),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: const Offset(0.7, 0.7),
          end: const Offset(1, 1),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: const Offset(0.8, 0.8),
          end: const Offset(1, 1),
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: const Offset(0, 40),
          end: const Offset(0, 0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 700.ms),
        FadeEffect(
          curve: Curves.bounceOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: const Offset(0, 30),
          end: const Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: const Offset(0.4, 0.4),
          end: const Offset(1, 1),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 900.ms),
        FadeEffect(
          curve: Curves.bounceOut,
          delay: 900.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 900.ms,
          duration: 600.ms,
          begin: const Offset(0, 30),
          end: const Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 900.ms,
          duration: 600.ms,
          begin: const Offset(0.4, 0.4),
          end: const Offset(1, 1),
        ),
      ],
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1000.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 600.ms,
          begin: const Offset(0, 50),
          end: const Offset(0, 0),
        ),
      ],
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      // backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
        alignment: const AlignmentDirectional(0, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                autovalidateMode: AutovalidateMode.disabled,
                child: Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(
                    maxWidth: 530,
                  ),
                  decoration: const BoxDecoration(),
                  child: Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 30),
                            child: const Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FlutterLogo(
                                  size: 90,
                                ),
                                // wrapWithModel(
                                //   model: _model.mainLogoSmallModel,
                                //   updateCallback: () => setState(() {}),
                                //   child: MainLogoSmallWidget(),
                                // ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation1']!),
                          ),
                          Text(
                            "Welcome Back",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation1']!),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 4, 0, 0),
                            child: Text(
                              "Use the form below to access",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation2']!),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 0),
                                  child: TextFormField(
                                    // controller: _model.emailAddressController,
                                    // focusNode: _model.emailAddressFocusNode,
                                    // autofocus: true,
                                    obscureText: false,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Email Address",
                                      // labelStyle: FlutterFlowTheme.of(context)
                                      //     .labelMedium
                                      //     .override(
                                      //       fontFamily: 'Plus Jakarta Sans',
                                      //       letterSpacing: 0,
                                      //     ),
                                      hintText: "Enter your email here...",
                                      // hintStyle: FlutterFlowTheme.of(context)
                                      //     .labelMedium
                                      //     .override(
                                      //       fontFamily: 'Plus Jakarta Sans',
                                      //       letterSpacing: 0,
                                      //     ),
                                      // enabledBorder: OutlineInputBorder(
                                      //   borderSide: BorderSide(
                                      //     color: FlutterFlowTheme.of(context)
                                      //         .alternate,
                                      //     width: 2,
                                      //   ),
                                      //   borderRadius: BorderRadius.circular(12),
                                      // ),
                                      //   focusedBorder: OutlineInputBorder(
                                      //     borderSide: BorderSide(
                                      //       color: FlutterFlowTheme.of(context)
                                      //           .primary,
                                      //       width: 2,
                                      //     ),
                                      //     borderRadius: BorderRadius.circular(12),
                                      //   ),
                                      //   errorBorder: OutlineInputBorder(
                                      //     borderSide: BorderSide(
                                      //       color: FlutterFlowTheme.of(context)
                                      //           .error,
                                      //       width: 2,
                                      //     ),
                                      //     borderRadius: BorderRadius.circular(12),
                                      //   ),
                                      //   focusedErrorBorder: OutlineInputBorder(
                                      //     borderSide: BorderSide(
                                      //       color: FlutterFlowTheme.of(context)
                                      //           .error,
                                      //       width: 2,
                                      //     ),
                                      //     borderRadius: BorderRadius.circular(12),
                                      //   ),
                                      //   filled: true,
                                      //   fillColor:
                                      //       FlutterFlowTheme.of(context).accent4,
                                      //   contentPadding:
                                      //       EdgeInsetsDirectional.fromSTEB(
                                      //           20, 24, 20, 24),
                                      // ),
                                      // style: FlutterFlowTheme.of(context)
                                      //     .bodyMedium
                                      //     .override(
                                      //       fontFamily: 'Plus Jakarta Sans',
                                      //       letterSpacing: 0,
                                      //     ),
                                      // cursorColor:
                                      //     FlutterFlowTheme.of(context).primary,
                                      // validator: _model
                                      //     .emailAddressControllerValidator
                                      //     .asValidator(context),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textFieldOnPageLoadAnimation1']!),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 0),
                                  child: TextFormField(
                                    // controller: _model.passwordController,
                                    // focusNode: _model.passwordFocusNode,
                                    // autofocus: true,
                                    autofillHints: [AutofillHints.password],
                                    // obscureText: !_model.passwordVisibility,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Password",
                                      // labelStyle: FlutterFlowTheme.of(context)
                                      //     .labelMedium
                                      //     .override(
                                      //       fontFamily: 'Plus Jakarta Sans',
                                      //       letterSpacing: 0,
                                      //     ),
                                      hintText: "Enter your password here...",
                                      // hintStyle: FlutterFlowTheme.of(context)
                                      //     .labelMedium
                                      //     .override(
                                      //       fontFamily: 'Plus Jakarta Sans',
                                      //       letterSpacing: 0,
                                      //     ),
                                      // enabledBorder: OutlineInputBorder(
                                      //   borderSide: BorderSide(
                                      //     color: FlutterFlowTheme.of(context)
                                      //         .alternate,
                                      //     width: 2,
                                      //   ),
                                      //   borderRadius: BorderRadius.circular(12),
                                      // ),
                                      // focusedBorder: OutlineInputBorder(
                                      //   borderSide: BorderSide(
                                      //     color: FlutterFlowTheme.of(context)
                                      //         .primary,
                                      //     width: 2,
                                      //   ),
                                      //   borderRadius: BorderRadius.circular(12),
                                      // ),
                                      // errorBorder: OutlineInputBorder(
                                      //   borderSide: BorderSide(
                                      //     color: FlutterFlowTheme.of(context)
                                      //         .error,
                                      //     width: 2,
                                      //   ),
                                      //   borderRadius: BorderRadius.circular(12),
                                      // ),
                                      // focusedErrorBorder: OutlineInputBorder(
                                      //   borderSide: BorderSide(
                                      //     color: FlutterFlowTheme.of(context)
                                      //         .error,
                                      //     width: 2,
                                      //   ),
                                      //   borderRadius: BorderRadius.circular(12),
                                      // ),
                                      // filled: true,
                                      // fillColor:
                                      //     FlutterFlowTheme.of(context).accent4,
                                      // contentPadding:
                                      //     EdgeInsetsDirectional.fromSTEB(
                                      //         20, 24, 20, 24),
                                      // suffixIcon: InkWell(
                                      //   onTap: () => setState(
                                      //     () => _model.passwordVisibility =
                                      //         !_model.passwordVisibility,
                                      //   ),
                                      //   focusNode:
                                      //       FocusNode(skipTraversal: true),
                                      //   child: Icon(
                                      //     _model.passwordVisibility
                                      //         ? Icons.visibility_outlined
                                      //         : Icons.visibility_off_outlined,
                                      //     color: FlutterFlowTheme.of(context)
                                      //         .secondaryText,
                                      //     size: 24,
                                      //   ),
                                      // ),
                                    ),
                                    // style: FlutterFlowTheme.of(context)
                                    //     .bodyMedium
                                    //     .override(
                                    //       fontFamily: 'Plus Jakarta Sans',
                                    //       letterSpacing: 0,
                                    //     ),
                                    // cursorColor:
                                    //     FlutterFlowTheme.of(context).primary,
                                    // validator: _model
                                    //     .passwordControllerValidator
                                    //     .asValidator(context),
                                  ).animateOnPageLoad(animationsMap[
                                      'textFieldOnPageLoadAnimation2']!),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 24, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgetPassword(),
                                      ),
                                    );
                                  },
                                  child: const Text("Forget Password?"),
                                ).animateOnPageLoad(animationsMap[
                                    'buttonOnPageLoadAnimation1']!),

                                // This button does the login flow
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text("Login"),
                                ).animateOnPageLoad(animationsMap[
                                    'buttonOnPageLoadAnimation2']!),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation2']!),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 24, 0, 0),
                            child: const Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Use a social platform to conti"),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation3']!),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      // logFirebaseEvent(
                                      //     'AUTH_LOGIN_Container_fxshfyvv_ON_TAP');
                                      // GoRouter.of(context).prepareAuthEvent();
                                      // final user = await authManager
                                      //     .signInWithGoogle(context);
                                      // if (user == null) {
                                      //   return;
                                      // }
                                      //
                                      // context.goNamedAuth(
                                      //     'Main_Home', context.mounted);
                                    },
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white12,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 2,
                                        ),
                                      ),
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: const Icon(Icons.sunny),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation1']!),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      // logFirebaseEvent(
                                      //     'AUTH_LOGIN_Container_peswewg7_ON_TAP');
                                      // GoRouter.of(context).prepareAuthEvent();
                                      // final user = await authManager
                                      //     .signInWithApple(context);
                                      // if (user == null) {
                                      //   return;
                                      // }
                                      //
                                      // context.goNamedAuth(
                                      //     'Main_Home', context.mounted);
                                    },
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white12,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 2,
                                        ),
                                      ),
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: const Icon(Icons.mood),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation2']!),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 24, 0, 24),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  " Don't have an account?",
                                  // style: FlutterFlowTheme.of(context)
                                  //     .labelMedium
                                  //     .override(
                                  //       fontFamily: 'Plus Jakarta Sans',
                                  //       letterSpacing: 0,
                                  //     ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                ElevatedButton(
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
                                        builder: (context) => const HomeView(),
                                      ),
                                    );
                                  },
                                  child: const Text("Create Account"),
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation4']!),
                          ),
                        ],
                      ),
                    ),
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
