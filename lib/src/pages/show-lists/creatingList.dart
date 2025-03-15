import 'dart:ui';
import 'package:flutter/material.dart';


class CreatingListWidget extends StatefulWidget {
  const CreatingListWidget({super.key});

  static String routeName = 'CreatingList';
  static String routePath = '/creatingList';

  @override
  State<CreatingListWidget> createState() => _CreatingListWidgetState();
}

class _CreatingListWidgetState extends State<CreatingListWidget> {
  // late CreatingListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => CreatingListModel());
    // _model.textController ??= TextEditingController();
    // _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    // _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          // leading: IconButton(
          //   borderRadius: 20,
          //   buttonSize: 40,
          //   icon: Icon(
          //     Icons.arrow_back_rounded,
          //     color: Theme.of(context).primaryColor,
          //     size: 24,
          //   ),
          //   onPressed: () {
          //     print('IconButton pressed ...');
          //   },
          // ),
          title: Text(
            'Lista de Compras',
            // style: Theme.of(context).headlineMedium.override(
            //       fontFamily: 'Inter Tight',
            //       color: Theme.of(context).primaryColor,
            //       letterSpacing: 0.0,
            //       fontWeight: FontWeight.w600,
            //     ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
              child: IconButton(
                // borderRadius: 20,
                // buttonSize: 40,
                icon: Icon(
                  Icons.more_vert,
                  color: Theme.of(context).primaryColor,
                  size: 24,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x1A000000),
                      offset: Offset(
                        0,
                        2,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.qr_code_scanner,
                        color: Theme.of(context).primaryColor,
                        size: 48,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Text(
                          'Escanear Código de Barras',
                          // style: Theme.of(context)
                          //     .titleMedium
                          //     .override(
                          //       fontFamily: 'Inter Tight',
                          //       color: Theme.of(context).primaryText,
                          //       letterSpacing: 0.0,
                          //       fontWeight: FontWeight.w600,
                          //     ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          'Posicione o código de barras na área de leitura',
                          textAlign: TextAlign.center,
                          // style: Theme.of(context)
                          //     .bodyMedium
                          //     .override(
                          //       fontFamily: 'Inter',
                          //       color:
                          //           Theme.of(context).secondaryText,
                          //       letterSpacing: 0.0,
                          //     ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        // child: FFButtonWidget(
                        //   onPressed: () {
                        //     print('Button pressed ...');
                        //   },
                        //   text: 'Escanear',
                        //   options: FFButtonOptions(
                        //     width: 150,
                        //     height: 40,
                        //     padding: EdgeInsets.all(8),
                        //     iconPadding:
                        //         EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        //     color: Theme.of(context).primaryColor,
                        //     textStyle: Theme.of(context)
                        //         .bodyMedium
                        //         .override(
                        //           fontFamily: 'Inter',
                        //           color: Theme.of(context)
                        //               .primaryColor,
                        //           letterSpacing: 0.0,
                        //           fontWeight: FontWeight.w600,
                        //         ),
                        //     borderRadius: BorderRadius.circular(8),
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondary,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x1A000000),
                        offset: Offset(
                          0,
                          2,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Produtos na Lista',
                                // style: Theme.of(context)
                                //     .titleMedium
                                //     .override(
                                //       fontFamily: 'Inter Tight',
                                //       color: Theme.of(context)
                                //           .primaryText,
                                //       letterSpacing: 0.0,
                                //       fontWeight: FontWeight.w600,
                                //     ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 150,
                                    child: TextFormField(
                                      controller: textController,
                                      // focusNode: _model.textFieldFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        hintText: 'Adicionar produto',
                                        // hintStyle: Theme.of(context)
                                        //     .bodySmall
                                        //     .override(
                                        //       fontFamily: 'Inter',
                                        //       letterSpacing: 0.0,
                                        //     ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        filled: true,
                                        fillColor: Color(0x00F5F5F5),
                                      ),
                                      // style: Theme.of(context)
                                      //     .bodyMedium
                                      //     .override(
                                      //       fontFamily: 'Inter',
                                      //       letterSpacing: 0.0,
                                      //     ),
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      // validator: _model.textControllerValidator
                                          // .asValidator(context),
                                    ),
                                  ),
                                  IconButton(
                                    // borderRadius: 8,
                                    // buttonSize: 40,
                                    // fillColor: Theme.of(context).primaryColor,
                                    icon: Icon(
                                      Icons.add,
                                      color: Theme.of(context)
                                          .primaryColor,
                                      size: 20,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ]
                                // .divide(SizedBox(width: 8)),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Arroz Integral',
                                                  // style: Theme.of(
                                                  //         context)
                                                  //     .bodyMedium
                                                  //     .override(
                                                  //       fontFamily: 'Inter',
                                                  //       letterSpacing: 0.0,
                                                  //       fontWeight:
                                                  //           FontWeight.w500,
                                                  //     ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 12, 0),
                                                child: Text(
                                                  'R\$ 8,90',
                                                  // style: Theme.of(
                                                  //         context)
                                                  //     .bodyMedium
                                                  //     .override(
                                                  //       fontFamily: 'Inter',
                                                  //       letterSpacing: 0.0,
                                                  //     ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  IconButton(
                                                    // borderRadius: 4,
                                                    // buttonSize: 30,
                                                    // fillColor:
                                                    //     Theme.of(
                                                    //             context)
                                                    //         .alternate,
                                                    icon: Icon(
                                                      Icons.remove,
                                                      color:
                                                          Theme.of(
                                                                  context)
                                                              .primaryColorDark,
                                                      size: 16,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 0, 4, 0),
                                                    child: Text(
                                                      '1',
                                                      // style: Theme
                                                      //         .of(context)
                                                      //     .bodyMedium
                                                      //     .override(
                                                      //       fontFamily: 'Inter',
                                                      //       letterSpacing: 0.0,
                                                      //     ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    // borderRadius: 4,
                                                    // buttonSize: 30,
                                                    // fillColor:
                                                        // Theme.of(
                                                        //         context)
                                                        //     .primary,
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: Theme
                                                              .of(context)
                                                          .primaryColor,
                                                      size: 16,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                  IconButton(
                                                    // borderRadius: 4,
                                                    // buttonSize: 30,
                                                    // fillColor:
                                                    //     Theme.of(
                                                    //             context)
                                                    //         .error,
                                                    icon: Icon(
                                                      Icons.delete_outline,
                                                      color: Theme
                                                              .of(context)
                                                          .primaryColor,
                                                      size: 16,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                ]
                                                // .divide(SizedBox(width: 8)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1,
                                          thickness: 1,
                                          color: Theme.of(context).colorScheme.onSecondary,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Leite Desnatado',
                                                  // style: Theme.of(
                                                  //         context)
                                                  //     .bodyMedium
                                                  //     .override(
                                                  //       fontFamily: 'Inter',
                                                  //       letterSpacing: 0.0,
                                                  //       fontWeight:
                                                  //           FontWeight.w500,
                                                  //     ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 12, 0),
                                                child: Text(
                                                  'R\$ 5,49',
                                                  // style: Theme.of(
                                                  //         context)
                                                  //     .bodyMedium
                                                  //     .override(
                                                  //       fontFamily: 'Inter',
                                                  //       letterSpacing: 0.0,
                                                  //     ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  IconButton(
                                                    // borderRadius: 4,
                                                    // buttonSize: 30,
                                                    // fillColor:
                                                        // Theme.of(context).colorScheme.onSecondary,
                                                    icon: Icon(
                                                      Icons.remove,
                                                      color: Theme.of(context).colorScheme.onSecondary,
                                                      size: 16,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 0, 4, 0),
                                                    child: Text(
                                                      '2',
                                                      // style: Theme
                                                      //         .of(context)
                                                      //     .bodyMedium
                                                      //     .override(
                                                      //       fontFamily: 'Inter',
                                                      //       letterSpacing: 0.0,
                                                      //     ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    // borderRadius: 4,
                                                    // buttonSize: 30,
                                                    // fillColor:
                                                    //     Theme.of(
                                                    //             context)
                                                    //         .primary,
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: Theme
                                                              .of(context)
                                                          .primaryColor,
                                                      size: 16,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                  IconButton(
                                                    // borderRadius: 4,
                                                    // buttonSize: 30,
                                                    // fillColor:
                                                    //     Theme.of(
                                                    //             context)
                                                    //         .error,
                                                    icon: Icon(
                                                      Icons.delete_outline,
                                                      color: Theme
                                                              .of(context)
                                                          .primaryColor,
                                                      size: 16,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                ]
                                                // .divide(SizedBox(width: 8)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1,
                                          thickness: 1,
                                          color: Theme.of(context).colorScheme.onSecondary,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Maçã Fuji',
                                                  // style: Theme.of(
                                                  //         context)
                                                  //     .bodyMedium
                                                  //     .override(
                                                  //       fontFamily: 'Inter',
                                                  //       letterSpacing: 0.0,
                                                  //       fontWeight:
                                                  //           FontWeight.w500,
                                                  //     ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 12, 0),
                                                child: Text(
                                                  'R\$ 7,29',
                                                  // style: Theme.of(
                                                  //         context)
                                                  //     .bodyMedium
                                                  //     .override(
                                                  //       fontFamily: 'Inter',
                                                  //       letterSpacing: 0.0,
                                                  //     ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  IconButton(
                                                    // borderRadius: 4,
                                                    // buttonSize: 30,
                                                    // fillColor:
                                                    //     Theme.of(
                                                    //             context)
                                                    //         .alternate,
                                                    icon: Icon(
                                                      Icons.remove,
                                                      color:
                                                          Theme.of(context).colorScheme.onPrimary,
                                                      size: 16,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 0, 4, 0),
                                                    child: Text(
                                                      '6',
                                                      // style: Theme
                                                      //         .of(context)
                                                      //     .bodyMedium
                                                      //     .override(
                                                      //       fontFamily: 'Inter',
                                                      //       letterSpacing: 0.0,
                                                      //     ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    // borderRadius: 4,
                                                    // buttonSize: 30,
                                                    // fillColor:
                                                    //     Theme.of(
                                                    //             context)
                                                    //         .primary,
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: Theme
                                                              .of(context)
                                                          .primaryColor,
                                                      size: 16,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                  IconButton(
                                                    // borderRadius: 4,
                                                    // buttonSize: 30,
                                                    // fillColor:
                                                    //     Theme.of(
                                                    //             context)
                                                    //         .error,
                                                    icon: Icon(
                                                      Icons.delete_outline,
                                                      color: Theme
                                                              .of(context)
                                                          .primaryColor,
                                                      size: 16,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                ]
                                                // .divide(SizedBox(width: 8)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1,
                                          thickness: 1,
                                          color: Theme.of(context).colorScheme.onSecondary,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x1A000000),
                      offset: Offset(
                        0,
                        2,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total',
                            // style: Theme.of(context)
                            //     .titleMedium
                            //     .override(
                            //       fontFamily: 'Inter Tight',
                            //       color:
                            //           Theme.of(context).primaryText,
                            //       letterSpacing: 0.0,
                            //       fontWeight: FontWeight.w600,
                            //     ),
                          ),
                          Text(
                            '9 itens',
                            // style:
                            //     Theme.of(context).bodySmall.override(
                            //           fontFamily: 'Inter',
                            //           color: Theme.of(context)
                            //               .secondaryText,
                            //           letterSpacing: 0.0,
                            //         ),
                          ),
                        ],
                      ),
                      Text(
                        'R\$ 57,63',
                        // style:
                        //     Theme.of(context).headlineSmall.override(
                        //           fontFamily: 'Inter Tight',
                        //           color: Theme.of(context).primaryColor,
                        //           letterSpacing: 0.0,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
