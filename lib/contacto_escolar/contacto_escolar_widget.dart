import '../contacto_desarrollador/contacto_desarrollador_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../redes_sociales/redes_sociales_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactoEscolarWidget extends StatefulWidget {
  const ContactoEscolarWidget({Key key}) : super(key: key);

  @override
  _ContactoEscolarWidgetState createState() => _ContactoEscolarWidgetState();
}

class _ContactoEscolarWidgetState extends State<ContactoEscolarWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color(0xFFE00303),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 45,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactoDesarrolladorWidget(),
                    ),
                  );
                },
                child: FaIcon(
                  FontAwesomeIcons.smile,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
          ],
          elevation: 2,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 20, 10, 5),
                            child: InkWell(
                              onTap: () async {
                                await launchURL(
                                    'https://www.google.com/maps/place/Escuela+Preparatoria+Central+de+Ciudad+Ju%C3%A1rez/@31.6883496,-106.4269522,20z/data=!4m5!3m4!1s0x86e75c32ef3ec137:0x8ae8c3c5640a9325!8m2!3d31.688066!4d-106.426688');
                              },
                              child: ListTile(
                                leading: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                  size: 45,
                                ),
                                title: Text(
                                  'Dirección',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                      ),
                                ),
                                subtitle: Text(
                                  'Av. Tecnológico #4445 Col. Partido Iglesias C.P. 32663 (dentro del Parque Central Poniente a un lado de la jirafa).',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Roboto Mono',
                                        fontSize: 15,
                                      ),
                                ),
                                trailing: FaIcon(
                                  FontAwesomeIcons.arrowCircleRight,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                tileColor:
                                    FlutterFlowTheme.of(context).alternate,
                                dense: false,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 20, 10, 5),
                            child: ListTile(
                              leading: Icon(
                                Icons.attach_email_outlined,
                                color: Colors.white,
                                size: 45,
                              ),
                              title: Text(
                                'Correo',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                    ),
                              ),
                              subtitle: Text(
                                'info@epccj.edu.mx',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Roboto Mono',
                                      fontSize: 16,
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context).alternate,
                              dense: false,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 20, 10, 5),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RedesSocialesWidget(),
                                  ),
                                );
                              },
                              child: ListTile(
                                leading: Icon(
                                  Icons.add_to_home_screen,
                                  color: Colors.white,
                                  size: 45,
                                ),
                                title: Text(
                                  'Síguenos en nuestras Redes Sociales',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                      ),
                                ),
                                trailing: FaIcon(
                                  FontAwesomeIcons.arrowCircleRight,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                tileColor:
                                    FlutterFlowTheme.of(context).alternate,
                                dense: false,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 20, 10, 5),
                            child: ListTile(
                              leading: Icon(
                                Icons.phone_in_talk_outlined,
                                color: Colors.white,
                                size: 45,
                              ),
                              title: Text(
                                'Teléfonos y Whatsapp',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                    ),
                              ),
                              subtitle: Text(
                                '(656) 233-03-07 \n637-85-04',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Roboto Mono',
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context).alternate,
                              dense: false,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
