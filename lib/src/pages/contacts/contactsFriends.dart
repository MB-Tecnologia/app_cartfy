import 'dart:ui';
import 'package:flutter/material.dart';

class FriendsListWidget extends StatefulWidget {
  const FriendsListWidget({super.key});

  static String routeName = 'FriendsList';
  static String routePath = '/friendsList';

  @override
  State<FriendsListWidget> createState() => _FriendsListWidgetState();
}

class _FriendsListWidgetState extends State<FriendsListWidget> {
  // late FriendsListModel _model;

final TextEditingController textController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => FriendsListModel());

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
          automaticallyImplyLeading: true,
          title: Text(
            'My Friends',
            // style: Theme.of(context).titleLarge.override(
            //       fontFamily: 'Inter Tight',
            //       color: Theme.of(context).colorScheme.onSecondary,
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
                    Icons.person_add,
                    color: Theme.of(context).colorScheme.onSecondary,
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
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: textController,
                    // focusNode: _model.textFieldFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Search friends...',
                      // hintStyle: Theme.of(context)
                      //     .bodyMedium
                      //     .override(
                      //       fontFamily: 'Inter',
                      //       color: Theme.of(context).secondaryText,
                      //       letterSpacing: 0.0,
                      //     ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.onSecondary,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor:
                          Theme.of(context).colorScheme.onSecondary,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Theme.of(context).colorScheme.onSecondary,
                        size: 24,
                      ),
                    ),
                    // style: Theme.of(context).bodyMedium.override(
                    //       fontFamily: 'Inter',
                    //       letterSpacing: 0.0,
                    //     ),
                    cursorColor: Theme.of(context).primaryColor,
                    // validator: _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          width: double.infinity,
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
                            padding: EdgeInsets.all(12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            '\"500x500?person#1\"',
                                          ).image,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ana Silva',
                                          // style: Theme.of(context)
                                          //     .bodyLarge
                                          //     .override(
                                          //       fontFamily: 'Inter',
                                          //       letterSpacing: 0.0,
                                          //       fontWeight: FontWeight.w600,
                                          //     ),
                                        ),
                                        Text(
                                          'Shared 3 lists',
                                          // style: Theme.of(context)
                                          //     .bodySmall
                                          //     .override(
                                          //       fontFamily: 'Inter',
                                          //       color:
                                          //           Theme.of(context)
                                          //               .secondaryText,
                                          //       letterSpacing: 0.0,
                                          //     ),
                                        ),
                                      ],
                                    ),
                                  ]
                                  // .divide(SizedBox(width: 12)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconButton(
                                      // borderRadius: 8,
                                      // buttonSize: 40,
                                      // fillColor:
                                      //     Theme.of(context).accent1,
                                      icon: Icon(
                                        Icons.share,
                                        color: Theme.of(context).primaryColor,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    IconButton(
                                      // borderRadius: 8,
                                      // buttonSize: 40,
                                      // fillColor:
                                      //     Theme.of(context).error,
                                      icon: Icon(
                                        Icons.delete,
                                        color:
                                            Theme.of(context).colorScheme.onSecondary,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          width: double.infinity,
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
                            padding: EdgeInsets.all(12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .primaryColor,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            '\"500x500?person#2\"',
                                          ).image,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Carlos Mendes',
                                          // style: Theme.of(context)
                                          //     .bodyLarge
                                          //     .override(
                                          //       fontFamily: 'Inter',
                                          //       letterSpacing: 0.0,
                                          //       fontWeight: FontWeight.w600,
                                          //     ),
                                        ),
                                        Text(
                                          'Shared 1 list',
                                          // style: Theme.of(context)
                                          //     .bodySmall
                                          //     .override(
                                          //       fontFamily: 'Inter',
                                          //       color:
                                          //           Theme.of(context)
                                          //               .secondaryText,
                                          //       letterSpacing: 0.0,
                                          //     ),
                                        ),
                                      ],
                                    ),
                                  ]
                                  // .divide(SizedBox(width: 12)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconButton(
                                      // borderRadius: 8,
                                      // buttonSize: 40,
                                      // fillColor:
                                      //     Theme.of(context).accent1,
                                      icon: Icon(
                                        Icons.share,
                                        color: Theme.of(context)
                                            .primaryColor,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    IconButton(
                                      // borderRadius: 8,
                                      // buttonSize: 40,
                                      // fillColor:
                                      //     Theme.of(context).error,
                                      icon: Icon(
                                        Icons.delete,
                                        color:
                                            Theme.of(context).colorScheme.onSecondary,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          width: double.infinity,
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
                            padding: EdgeInsets.all(12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            '\"500x500?person#3\"',
                                          ).image,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Mariana Costa',
                                          // style: Theme.of(context)
                                          //     .bodyLarge
                                          //     .override(
                                          //       fontFamily: 'Inter',
                                          //       letterSpacing: 0.0,
                                          //       fontWeight: FontWeight.w600,
                                          //     ),
                                        ),
                                        Text(
                                          'Shared 2 lists',
                                          // style: Theme.of(context)
                                          //     .bodySmall
                                          //     .override(
                                          //       fontFamily: 'Inter',
                                          //       color:
                                          //           Theme.of(context)
                                          //               .secondaryText,
                                          //       letterSpacing: 0.0,
                                          //     ),
                                        ),
                                      ],
                                    ),
                                  ]
                                  // .divide(SizedBox(width: 12)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconButton(
                                      // borderRadius: 8,
                                      // buttonSize: 40,
                                      // fillColor:
                                      //     Theme.of(context).accent1,
                                      icon: Icon(
                                        Icons.share,
                                        color: Theme.of(context).primaryColor,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    IconButton(
                                      // borderRadius: 8,
                                      // buttonSize: 40,
                                      // fillColor:
                                      //     Theme.of(context).error,
                                      icon: Icon(
                                        Icons.delete,
                                        color:
                                            Theme.of(context).colorScheme.onSecondary,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            '\"500x500?person#4\"',
                                          ).image,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Rafael Oliveira',
                                          // style: Theme.of(context)
                                          //     .bodyLarge
                                          //     .override(
                                          //       fontFamily: 'Inter',
                                          //       letterSpacing: 0.0,
                                          //       fontWeight: FontWeight.w600,
                                          //     ),
                                        ),
                                        Text(
                                          'No shared lists',
                                          // style: Theme.of(context)
                                          //     .bodySmall
                                          //     .override(
                                          //       fontFamily: 'Inter',
                                          //       color:
                                          //           Theme.of(context)
                                          //               .secondaryText,
                                          //       letterSpacing: 0.0,
                                          //     ),
                                        ),
                                      ],
                                    ),
                                  ]
                                  // .divide(SizedBox(width: 12)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconButton(
                                      // borderRadius: 8,
                                      // buttonSize: 40,
                                      // fillColor:
                                      //     Theme.of(context).accent1,
                                      icon: Icon(
                                        Icons.share,
                                        color: Theme.of(context).primaryColor,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    IconButton(
                                      // borderRadius: 8,
                                      // buttonSize: 40,
                                      // fillColor:
                                      //     Theme.of(context).error,
                                      icon: Icon(
                                        Icons.delete,
                                        color:
                                            Theme.of(context).colorScheme.onSecondary,
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).primaryColor
                      ],
                      stops: [0.8, 1],
                      begin: AlignmentDirectional(1, 1),
                      end: AlignmentDirectional(-1, -1),
                    ),
                  ),
                  // child: FFButtonWidget(
                  //   onPressed: () {
                  //     print('Button pressed ...');
                  //   },
                  //   text: 'Invite New Friend',
                  //   options: FFButtonOptions(
                  //     width: double.infinity,
                  //     height: 50,
                  //     padding: EdgeInsets.all(8),
                  //     iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  //     color: Theme.of(context).colorScheme.onSecondary,
                  //     textStyle:
                  //         Theme.of(context).titleSmall.override(
                  //               fontFamily: 'Inter Tight',
                  //               color: Theme.of(context).colorScheme.onSecondary,
                  //               letterSpacing: 0.0,
                  //             ),
                  //     elevation: 0,
                  //     borderSide: BorderSide(
                  //       color: Theme.of(context).colorScheme.onSecondary,
                  //       width: 1,
                  //     ),
                  //     borderRadius: BorderRadius.circular(12),
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
