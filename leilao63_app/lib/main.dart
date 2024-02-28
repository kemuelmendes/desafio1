import 'package:flutter/material.dart';

import 'package:leilao63_app/leilao63_app.dart';

import 'core/config/env/env.dart';

Future<void> main() async {
  await Env.i.load();
  runApp((const Leilao63App()));
}
