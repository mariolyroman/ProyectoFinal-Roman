import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterFlowTheme.initialize();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProyectoFinal-Roman',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      home: NavBarPage(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Inicio';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Inicio': InicioWidget(),
      'Maestros': MaestrosWidget(),
      'Alumnos': AlumnosWidget(),
      'Registro': RegistroWidget(),
      'Especialidades': EspecialidadesWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        selectedItemColor: Colors.black,
        unselectedItemColor: Color(0x7EFFFFFF),
        selectedBackgroundColor: Color(0x00000000),
        borderRadius: 8,
        itemBorderRadius: 8,
        margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        width: 340,
        elevation: 0,
        items: [
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 0 ? Icons.home : Icons.home,
                  color: currentIndex == 0 ? Colors.black : Color(0x7EFFFFFF),
                  size: 24,
                ),
                Text(
                  'I',
                  overflow: TextOverflow.ellipsis,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Roboto Mono',
                        fontSize: 10,
                        fontWeight: FontWeight.w200,
                      ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 1 ? Icons.people_alt : Icons.people_alt,
                  color: currentIndex == 1 ? Colors.black : Color(0x7EFFFFFF),
                  size: 24,
                ),
                Text(
                  'M',
                  overflow: TextOverflow.ellipsis,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Roboto Mono',
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 2 ? Icons.emoji_people : Icons.emoji_people,
                  color: currentIndex == 2 ? Colors.black : Color(0x7EFFFFFF),
                  size: 24,
                ),
                Text(
                  'A',
                  overflow: TextOverflow.ellipsis,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Roboto Mono',
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 3 ? Icons.how_to_reg : Icons.how_to_reg,
                  color: currentIndex == 3 ? Colors.black : Color(0x7EFFFFFF),
                  size: 24,
                ),
                Text(
                  'R',
                  overflow: TextOverflow.ellipsis,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Roboto Mono',
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 4
                      ? Icons.menu_book_outlined
                      : Icons.menu_book_outlined,
                  color: currentIndex == 4 ? Colors.black : Color(0x7EFFFFFF),
                  size: 24,
                ),
                Text(
                  'E',
                  overflow: TextOverflow.ellipsis,
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Roboto Mono',
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
