
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portofolioku/main.dart';
import 'package:portofolioku/screens/screens.dart';

class AppModule extends MainModule{
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => MyApp();

  @override
  List<ModularRouter> get routers => [
    ModularRouter('/', child:(_,__) => Beranda()),
    ModularRouter('/portofolio', child:(_,__) => Portofolio()),
    ModularRouter('/kontak', child:(_,__) => Kontak()),
  ];

}