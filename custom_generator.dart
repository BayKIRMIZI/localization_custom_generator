import 'dart:convert';
import 'dart:developer';
import 'dart:io';

class Config {
  static String get jsonFilePath {
    return '${Directory.current.path}/assets/translations/en.json';
  }

  static String get outputFilePath {
    return '${Directory.current.path}/lib/translations/locale_keys.s.dart';
  }
}

class LocaleKeysGenerator {
  final String jsonFilePath;

  LocaleKeysGenerator(this.jsonFilePath);

  void generate() {
    final jsonData = json.decode(File(jsonFilePath).readAsStringSync())
        as Map<String, dynamic>;
    final keys = <String>{};

    _extractKeys(jsonData, keys, '');

    final output = _generateLocaleKeysClass(keys);

    File(Config.outputFilePath).writeAsStringSync(output);
    log('LocaleKeys class generated in lib/translations/locale_keys.s.dart');
  }

  void _extractKeys(
    Map<String, dynamic> data,
    Set<String> keys,
    String prefix,
  ) {
    data.forEach((key, value) {
      final newKey = prefix.isEmpty ? key : '${prefix}.$key';
      if (value is Map<String, dynamic>) {
        _extractKeys(value, keys, newKey);
      } else if (value is String) {
        keys.add(newKey);
      }
    });
  }

  String _generateLocaleKeysClass(Set<String> keys) {
    final buffer = StringBuffer();
    buffer.writeln('abstract class MyLocaleKeys {');
    for (var key in keys) {
      buffer.writeln('  static const String ${_toCamelCase(key)} = \'$key\';');
    }
    buffer.writeln('}');
    return buffer.toString();
  }

  String _toCamelCase(String key) {
    key = key.replaceAll('.', '_');
    final newKey = key.replaceAllMapped(
      RegExp(r'_(\w)'),
      (Match match) {
        return match[1]!.toUpperCase();
      },
    );

    return newKey[0].toLowerCase() + newKey.substring(1);
  }
}

void main(List<String> args) {
  if (args.isEmpty || args[0] != 'generate') {
    log("NOT: Generator çalıştırmak için: 'Terminalin custom_generator.dart dosyasının olduğu dizinde olması gerekir.'");

    log("Terminal kök_proje/lib/translations dizininde ise");
    log('1. Kullanım Senaryosu: dart custom_generator.dart generate');

    log("Terminal projenin kök dizininde ise");
    log('2. Kullanım Senaryosu: dart lib/translations/custom_generator.dart generate');
    return;
  }

  final jsonFilePath = Config.jsonFilePath;
  final generator = LocaleKeysGenerator(jsonFilePath);
  generator.generate();
}
