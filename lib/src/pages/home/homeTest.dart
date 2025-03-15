import 'dart:ui';
import 'package:flutter/material.dart';


class TelaInicialWidget extends StatefulWidget {
  const TelaInicialWidget({super.key});

  static String routeName = 'TelaInicial';
  static String routePath = '/telaInicial';

  @override
  State<TelaInicialWidget> createState() => _TelaInicialWidgetState();
}

class _TelaInicialWidgetState extends State<TelaInicialWidget> {
  // late TelaInicialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

    final TextEditingController textController = TextEditingController(); 
  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => TelaInicialModel());
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
          title: Text(
            'Lista Fácil',
            // style:   TextStyle(fontFamily: 'Inter Tight', color: Theme.of(context).colorScheme.onPrimaryContainer),
            // style: Theme.of(context).he.override(
            //       fontFamily: 'Inter Tight',
            //       color: Theme.of(context).info,
            //       letterSpacing: 0.0,
            //       fontWeight: FontWeight.bold,
            //     ),
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: IconButton(
                  // borderRadius: 40,
                  // buttonSize: 40,
                  icon: Icon(
                    Icons.notifications_none,
                    color: Theme.of(context).primaryColor,
                    size: 24,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 24),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: textController,
                      // focusNode: _model.textFieldFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: false,
                        hintText: 'Buscar produtos...',
                        // hintStyle:
                        //     Theme.of(context).labelMedium.override(
                        //           fontFamily: 'Inter',
                        //           color: Theme.of(context).info,
                        //           letterSpacing: 0.0,
                        //         ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.error,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.error,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.onSecondary,
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Theme.of(context).colorScheme.onSecondary,
                          size: 24,
                        ),
                      ),
                      // style: Theme.of(context).bodyMedium.override(
                      //       fontFamily: 'Inter',
                      //       color: Theme.of(context).info,
                      //       letterSpacing: 0.0,
                      //     ),
                      cursorColor: Theme.of(context).colorScheme.onSecondary,
                      // validator:
                      //     _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 80),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Minhas Listas',
                                // style: Theme.of(context)
                                //     .titleLarge
                                //     .override(
                                //       fontFamily: 'Inter Tight',
                                //       letterSpacing: 0.0,
                                //       fontWeight: FontWeight.bold,
                                //     ),
                              ),
                              IconButton(
                            
                                icon: Icon(
                                  Icons.add_rounded,
                                  color: Theme.of(context).primaryColor,
                                  size: 24,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                        ),
                        GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 0.8,
                          ),
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme.onSecondary,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Supermercado',
                                          // style: Theme.of(context)
                                          //     .titleMedium
                                          //     .override(
                                          //       fontFamily: 'Inter Tight',
                                          //       letterSpacing: 0.0,
                                          //       fontWeight: FontWeight.w600,
                                          //     ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 0),
                                          child: Text(
                                            '12 itens',
                                            // style: Theme.of(context)
                                            //     .bodySmall
                                            //     .override(
                                            //       fontFamily: 'Inter',
                                            //       color: FlutterFlowTheme.of(
                                            //               context)
                                            //           .secondaryText,
                                            //       letterSpacing: 0.0,
                                            //     ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Atualizado: 12/05',
                                          // style: Theme.of(context)
                                          //     .labelMedium
                                          //     .override(
                                          //       fontFamily: 'Inter',
                                          //       color:
                                          //           Theme.of(context)
                                          //               .secondaryText,
                                          //       letterSpacing: 0.0,
                                          //     ),
                                        ),
                                        Icon(
                                          Icons.edit_rounded,
                                          color: Theme.of(context)
                                              .primaryColor,
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Feira',
                                          // style: Theme.of(context)
                                          //     .titleMedium
                                          //     .override(
                                          //       fontFamily: 'Inter Tight',
                                          //       letterSpacing: 0.0,
                                          //       fontWeight: FontWeight.w600,
                                          //     ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 0),
                                          child: Text(
                                            '8 itens',
                                            // style: Theme.of(context)
                                            //     .bodySmall
                                            //     .override(
                                            //       fontFamily: 'Inter',
                                            //       color: FlutterFlowTheme.of(
                                            //               context)
                                            //           .secondaryText,
                                            //       letterSpacing: 0.0,
                                            //     ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Atualizado: 10/05',
                                          // style: Theme.of(context)
                                          //     .labelMedium
                                          //     .override(
                                          //       fontFamily: 'Inter',
                                          //       color:
                                          //           Theme.of(context)
                                          //               .secondaryText,
                                          //       letterSpacing: 0.0,
                                          //     ),
                                        ),
                                        Icon(
                                          Icons.edit_rounded,
                                          color: Theme.of(context)
                                              .primaryColor,
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .secondaryHeaderColor,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Farmácia',
                                          // style: Theme.of(context)
                                          //     .titleMedium
                                          //     .override(
                                          //       fontFamily: 'Inter Tight',
                                          //       letterSpacing: 0.0,
                                          //       fontWeight: FontWeight.w600,
                                          //     ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 0),
                                          child: Text(
                                            '3 itens',
                                            // style: Theme.of(context)
                                            //     .bodySmall
                                            //     .override(
                                            //       fontFamily: 'Inter',
                                            //       color: FlutterFlowTheme.of(
                                            //               context)
                                            //           .secondaryText,
                                            //       letterSpacing: 0.0,
                                            //     ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Atualizado: 05/05',
                                          // style: Theme.of(context)
                                              // .labelMedium
                                              // .override(
                                              //   fontFamily: 'Inter',
                                              //   color:
                                              //       Theme.of(context)
                                              //           .secondaryText,
                                              //   letterSpacing: 0.0,
                                              // ),
                                        ),
                                        Icon(
                                          Icons.edit_rounded,
                                          color: Theme.of(context)
                                              .primaryColor,
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Produtos Recentes',
                                // style: Theme.of(context)
                                //     .titleLarge
                                //     .override(
                                //       fontFamily: 'Inter Tight',
                                //       letterSpacing: 0.0,
                                //       fontWeight: FontWeight.bold,
                                //     ),
                              ),
                              Text(
                                'Ver todos',
                                // style: Theme.of(context)
                                    // .bodyMedium
                                    // .override(
                                    //   fontFamily: 'Inter',
                                    //   color:
                                    //       Theme.of(context).primary,
                                    //   letterSpacing: 0.0,
                                    // ),
                              ),
                            ],
                          ),
                        ),
                        ListView(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: ListTile(
                                title: Text(
                                  'Arroz Integral',
                                  // style: Theme.of(context)
                                  //     .titleMedium
                                  //     .override(
                                  //       fontFamily: 'Inter Tight',
                                  //       letterSpacing: 0.0,
                                  //     ),
                                ),
                                subtitle: Text(
                                  'R\$ 8,90 - Supermercado Extra',
                                  // style: Theme.of(context)
                                  //     .bodySmall
                                  //     .override(
                                  //       fontFamily: 'Inter',
                                  //       letterSpacing: 0.0,
                                  //     ),
                                ),
                                dense: false,
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              child: ListTile(
                                title: Text(
                                  'Leite Desnatado',
                                  // style: Theme.of(context)
                                  //     .titleMedium
                                  //     .override(
                                  //       fontFamily: 'Inter Tight',
                                  //       letterSpacing: 0.0,
                                  //     ),
                                ),
                                subtitle: Text(
                                  'R\$ 4,50 - Supermercado Dia',
                                  // style: Theme.of(context)
                                  //     .bodySmall
                                  //     .override(
                                  //       fontFamily: 'Inter',
                                  //       letterSpacing: 0.0,
                                  //     ),
                                ),
                                dense: false,
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              child: ListTile(
                                title: Text(
                                  'Sabonete Neutro',
                                  // style: Theme.of(context)
                                  //     .titleMedium
                                  //     .override(
                                  //       fontFamily: 'Inter Tight',
                                  //       letterSpacing: 0.0,
                                  //     ),
                                ),
                                subtitle: Text(
                                  'R\$ 2,75 - Farmácia São Paulo',
                                  // style: Theme.of(context)
                                  //     .bodySmall
                                  //     .override(
                                  //       fontFamily: 'Inter',
                                  //       letterSpacing: 0.0,
                                  //     ),
                                ),
                                dense: false,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Container(
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x00F1F4F8),
                          Theme.of(context).primaryColor
                        ],
                        stops: [0, 0.7],
                        begin: AlignmentDirectional(0, -1),
                        end: AlignmentDirectional(0, 1),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.home_rounded,
                                  color: Theme.of(context).primaryColor,
                                  size: 28,
                                ),
                                Text(
                                  'Início',
                                  // style: Theme.of(context)
                                  //     .bodySmall
                                  //     .override(
                                  //       fontFamily: 'Inter',
                                  //       color: Theme.of(context)
                                  //           .primary,
                                  //       letterSpacing: 0.0,
                                  //       fontWeight: FontWeight.w600,
                                  //     ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.format_list_bulleted_rounded,
                                  color: Theme.of(context)
                                      .colorScheme.onSecondary,
                                  size: 28,
                                ),
                                Text(
                                  'Listas',
                                  // style: Theme.of(context)
                                  //     .bodySmall
                                  //     .override(
                                  //       fontFamily: 'Inter',
                                  //       color: Theme.of(context)
                                  //           .secondaryText,
                                  //       letterSpacing: 0.0,
                                  //     ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 56,
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Icon(
                                      Icons.qr_code_scanner_rounded,
                                      color: Theme.of(context).colorScheme.onSecondary,
                                      size: 32,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_cart_rounded,
                                  color: Theme.of(context)
                                      .colorScheme.onSecondary,
                                  size: 28,
                                ),
                                Text(
                                  'Produtos',
                                  // style: Theme.of(context)
                                  //     .bodySmall
                                  //     .override(
                                  //       fontFamily: 'Inter',
                                  //       color: Theme.of(context)
                                  //           .secondaryText,
                                  //       letterSpacing: 0.0,
                                  //     ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_rounded,
                                  color: Theme.of(context)
                                      .colorScheme.onSecondary,
                                  size: 28,
                                ),
                                Text(
                                  'Perfil',
                                  // style: Theme.of(context)
                                  //     .bodySmall
                                  //     .override(
                                  //       fontFamily: 'Inter',
                                  //       color: Theme.of(context)
                                  //           .secondaryText,
                                  //       letterSpacing: 0.0,
                                  //     ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
