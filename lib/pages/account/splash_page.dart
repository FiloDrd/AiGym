import 'package:ai_gym/main.dart';
import 'package:flutter/material.dart';

// QUESTA PAGINA SI OCCUPA DI CONTROLLARE SE L'UTENTE è GIA LOGGATO OPPURE NO

class SplashPageBeta extends StatefulWidget {
  const SplashPageBeta({super.key});

  @override
  State<SplashPageBeta> createState() => _SplashPageBetaState();
}

class _SplashPageBetaState extends State<SplashPageBeta> {
  final GlobalKey<_SplashPageBetaState> myWidgetKey = GlobalKey();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    final session = supabase.auth.currentSession;
    if (session != null) {
      if (mounted) {
        Navigator.of(context).pushNamed("Welcome");
      }
    } else {
      if (mounted) {
        Navigator.of(context).pushNamed("Welcome");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
