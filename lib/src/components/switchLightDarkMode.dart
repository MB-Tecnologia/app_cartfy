// import '/flutter_flow/flutter_flow_animations.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'dark_light_switch_small_model.dart';
// export 'dark_light_switch_small_model.dart';

// class DarkLightSwitchSmallWidget extends StatefulWidget {
//   const DarkLightSwitchSmallWidget({super.key});

//   @override
//   State<DarkLightSwitchSmallWidget> createState() =>
//       _DarkLightSwitchSmallWidgetState();
// }

// class _DarkLightSwitchSmallWidgetState extends State<DarkLightSwitchSmallWidget>
//     with TickerProviderStateMixin {
//   late DarkLightSwitchSmallModel _model;

//   final animationsMap = <String, AnimationInfo>{};

//   @override
//   void setState(VoidCallback callback) {
//     super.setState(callback);
//     _model.onUpdate();
//   }

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => DarkLightSwitchSmallModel());

//     animationsMap.addAll({
//       'containerOnActionTriggerAnimation': AnimationInfo(
//         trigger: AnimationTrigger.onActionTrigger,
//         applyInitialState: true,
//         effectsBuilder: () => [
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 300.0.ms,
//             begin: Offset(-40.0, 0.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//     });
//     setupAnimations(
//       animationsMap.values.where((anim) =>
//           anim.trigger == AnimationTrigger.onActionTrigger ||
//           !anim.applyInitialState),
//       this,
//     );
//   }

//   @override
//   void dispose() {
//     _model.maybeDispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
//       child: InkWell(
//         splashColor: Colors.transparent,
//         focusColor: Colors.transparent,
//         hoverColor: Colors.transparent,
//         highlightColor: Colors.transparent,
//         onTap: () async {
//           if ((Theme.of(context).brightness == Brightness.light) == true) {
//             setDarkModeSetting(context, ThemeMode.dark);
//             if (animationsMap['containerOnActionTriggerAnimation'] != null) {
//               animationsMap['containerOnActionTriggerAnimation']!
//                   .controller
//                   .forward(from: 0.0);
//             }
//           } else {
//             setDarkModeSetting(context, ThemeMode.light);
//             if (animationsMap['containerOnActionTriggerAnimation'] != null) {
//               animationsMap['containerOnActionTriggerAnimation']!
//                   .controller
//                   .reverse();
//             }
//           }
//         },
//         child: Container(
//           width: 80,
//           height: 40,
//           decoration: BoxDecoration(
//             color: Color(0xFFF1F4F8),
//             borderRadius: BorderRadius.circular(20),
//             border: Border.all(
//               color: Color(0xFFE0E3E7),
//               width: 1,
//             ),
//           ),
//           child: Padding(
//             padding: EdgeInsets.all(2),
//             child: Stack(
//               alignment: AlignmentDirectional(0, 0),
//               children: [
//                 Align(
//                   alignment: AlignmentDirectional(-0.9, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
//                     child: Icon(
//                       Icons.wb_sunny_rounded,
//                       color: Color(0xFF57636C),
//                       size: 24,
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: AlignmentDirectional(1, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 0, 6, 0),
//                     child: Icon(
//                       Icons.mode_night_rounded,
//                       color: Color(0xFF57636C),
//                       size: 24,
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: AlignmentDirectional(1, 0),
//                   child: Container(
//                     width: 36,
//                     height: 36,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 4,
//                           color: Color(0x430B0D0F),
//                           offset: Offset(
//                             0.0,
//                             2,
//                           ),
//                         )
//                       ],
//                       borderRadius: BorderRadius.circular(30),
//                       shape: BoxShape.rectangle,
//                     ),
//                   ).animateOnActionTrigger(
//                     animationsMap['containerOnActionTriggerAnimation']!,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
