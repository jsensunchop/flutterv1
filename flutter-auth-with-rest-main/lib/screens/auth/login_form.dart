import 'package:authwithrest/bloc/login_bloc/login_bloc.dart';
import 'package:authwithrest/repositories/repositories.dart';
import 'package:authwithrest/routes/routesNames.dart';
import 'package:authwithrest/screens/register/register_form.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:authwithrest/style/theme.dart' as Style;
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatefulWidget {
  final UserRepository userRepository;

  LoginForm({Key key, @required this.userRepository})
      : assert(userRepository != null),
        super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState(userRepository);
}

class _LoginFormState extends State<LoginForm> {
  final UserRepository userRepository;

  _LoginFormState(this.userRepository);

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(
        LoginButtonPressed(
          email: _usernameController.text,
          password: _passwordController.text,
          type: _typeController.text,
        ),
      );
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Login failed."),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                'Inicio sesion',
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Form(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.5,
                              color: Color.fromRGBO(254, 69, 24, 1),
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, right: 130.0, top: 50.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Nos alegra\nque regresaras',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 26.0),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        'Ingresa tus datos y volvamos\na ganar dinero :D',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0),
                                      ),
                                    ],
                                  )),
                              // SvgPicture.asset(
                              //   "assets/icons/background.svg",
                              //
                              //   alignment: Alignment.center,
                              //   width: MediaQuery.of(context).size.width,
                              //   height: MediaQuery.of(context).size.height*0.5,
                              // ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 220.0,
                                ),
                                Container(
                                    height: 700,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(1),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 30.0, left: 30.0, top: 30.0),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextFormField(
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Style.Colors.titleColor,
                                                fontWeight: FontWeight.bold),
                                            controller: _usernameController,
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: new BorderSide(
                                                      color: Colors.black12),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: new BorderSide(
                                                      color: Style
                                                          .Colors.mainColor),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0)),
                                              contentPadding: EdgeInsets.only(
                                                  left: 10.0, right: 10.0),
                                              labelText: "Correo electrónico",
                                              hintStyle: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Style.Colors.fields,
                                                  fontWeight: FontWeight.w500),
                                              labelStyle: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            autocorrect: false,
                                          ),
                                          SizedBox(
                                            height: 40.0,
                                          ),
                                          TextFormField(
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Style.Colors.titleColor,
                                                fontWeight: FontWeight.bold),
                                            controller: _passwordController,
                                            decoration: InputDecoration(
                                              fillColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: new BorderSide(
                                                      color: Colors.black12),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: new BorderSide(
                                                      color: Style
                                                          .Colors.mainColor),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0)),
                                              contentPadding: EdgeInsets.only(
                                                  left: 10.0, right: 10.0),
                                              labelText: "Contraseña",
                                              hintStyle: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Style.Colors.fields,
                                                  fontWeight: FontWeight.w500),
                                              labelStyle: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            autocorrect: false,
                                            obscureText: true,
                                          ),
                                          SizedBox(
                                            height: 40.0,
                                          ),
                                          TextFormField(
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Style.Colors.titleColor,
                                                fontWeight: FontWeight.bold),
                                            controller: _typeController,
                                            decoration: InputDecoration(
                                              fillColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: new BorderSide(
                                                      color: Colors.black12),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: new BorderSide(
                                                      color: Style
                                                          .Colors.mainColor),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0)),
                                              contentPadding: EdgeInsets.only(
                                                  left: 10.0, right: 10.0),
                                              labelText: "Tipo",
                                              hintStyle: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Style.Colors.grey,
                                                  fontWeight: FontWeight.w500),
                                              labelStyle: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            autocorrect: false,
                                            obscureText: true,
                                          ),
                                          SizedBox(
                                            height: 30.0,
                                          ),
                                          //OLVIDE MI CONTRASENA
                                          Align(
                                            alignment: Alignment.center,
                                            child: new InkWell(
                                                child: new Text(
                                                  "Olvidé mi contraseña :(",
                                                  style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 12.0),
                                                ),
                                                onTap: () {}),
                                          ),
                                          //BOTON DE LOGIN
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 30.0, bottom: 20.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: <Widget>[
                                                SizedBox(
                                                    height: 45,
                                                    child: state is LoginLoading
                                                        ? Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Center(
                                                                  child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  SizedBox(
                                                                    height:
                                                                        25.0,
                                                                    width: 25.0,
                                                                    child:
                                                                        CupertinoActivityIndicator(),
                                                                  )
                                                                ],
                                                              ))
                                                            ],
                                                          )
                                                        : RaisedButton(
                                                            color: Color.fromRGBO(
                                                                254, 69, 24, 1),
                                                            disabledColor: Style
                                                                .Colors.grey,
                                                            disabledTextColor:
                                                                Colors.white,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            onPressed:
                                                                _onLoginButtonPressed,
                                                            child: Text(
                                                                "INGRESAR",
                                                                style: new TextStyle(
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white)))),
                                              ],
                                            ),
                                          ),
                                          //BOTONES DE REDES
                                          // Row(
                                          //   mainAxisAlignment: MainAxisAlignment.center,
                                          //   children: [
                                          //     Text(
                                          //       "Or connect using",
                                          //       style: TextStyle(
                                          //           color: Colors.black26, fontSize: 12.0),
                                          //     ),
                                          //   ],
                                          // ),
                                          // SizedBox(
                                          //   height: 20.0,
                                          // ),
                                          // //BOTONES DE REDES
                                          // Row(
                                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          //   children: [
                                          //     Container(
                                          //       height: 40.0,
                                          //       width: 160.0,
                                          //       child: RaisedButton(
                                          //           color: Color(0xFF385c8e),
                                          //           disabledColor: Style.Colors.mainColor,
                                          //           disabledTextColor: Colors.white,
                                          //           shape: RoundedRectangleBorder(
                                          //             borderRadius:
                                          //                 BorderRadius.circular(8.0),
                                          //           ),
                                          //           onPressed: _onLoginButtonPressed,
                                          //           child: Row(
                                          //             mainAxisAlignment:
                                          //                 MainAxisAlignment.center,
                                          //             children: [
                                          //               Icon(
                                          //                 EvaIcons.facebook,
                                          //                 color: Colors.white,
                                          //               ),
                                          //               SizedBox(
                                          //                 width: 5.0,
                                          //               ),
                                          //               Text("Facebook",
                                          //                   style: new TextStyle(
                                          //                       fontSize: 12.0,
                                          //                       fontWeight: FontWeight.bold,
                                          //                       color: Colors.white)),
                                          //             ],
                                          //           )),
                                          //     ),
                                          //     Container(
                                          //       width: 180.0,
                                          //       height: 40.0,
                                          //       child: RaisedButton(
                                          //           color: Color(0xFFf14436),
                                          //           disabledColor: Style.Colors.mainColor,
                                          //           disabledTextColor: Colors.white,
                                          //           shape: RoundedRectangleBorder(
                                          //             borderRadius:
                                          //                 BorderRadius.circular(8.0),
                                          //           ),
                                          //           onPressed: () {},
                                          //           child: Row(
                                          //             mainAxisAlignment:
                                          //                 MainAxisAlignment.center,
                                          //             children: [
                                          //               Icon(
                                          //                 EvaIcons.google,
                                          //                 color: Colors.white,
                                          //               ),
                                          //               SizedBox(
                                          //                 width: 5.0,
                                          //               ),
                                          //               Text("Google",
                                          //                   style: new TextStyle(
                                          //                       fontSize: 12.0,
                                          //                       fontWeight: FontWeight.bold,
                                          //                       color: Colors.white)),
                                          //             ],
                                          //           )),
                                          //     ),
                                          //   ],
                                          // ),
                                          // SizedBox(
                                          //   height: 40.0,
                                          // ),
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 10.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "¿No tienes una cuenta?",
                                                        style: TextStyle(
                                                            color: Style
                                                                .Colors.grey),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 5.0),
                                                      ),
                                                      GestureDetector(
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                new MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            new RegisterForm()));
                                                          },
                                                          child: Text(
                                                            "Crea una aquí",
                                                            style: TextStyle(
                                                                color: Style
                                                                    .Colors
                                                                    .mainColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ))
                                                    ],
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
