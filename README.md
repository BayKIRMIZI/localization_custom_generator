# Locale Keys Generator for Flutter

This Dart script automatically generates a `MyLocaleKeys` class from a JSON translation file. It simplifies the use of translation keys in your Flutter app, promoting safer and cleaner code by avoiding hardcoded strings.

## Features
- Parses nested translation keys from a `.json` file
- Generates Dart constants for each key using camelCase
- Outputs a single `locale_keys.s.dart` file under `lib/translations/`

## Requirements
- Dart SDK

## File Structure
```
project_root/
├── assets/
│   └── translations/
│       └── en.json
├── lib/
│   └── translations/
│       └── custom_generator.dart
```

## How to Use
Run this command from the terminal:

### Option 1 (if you're in `lib/translations/` directory):
```sh
dart custom_generator.dart generate
```

### Option 2 (if you're in the project root directory):
```sh
dart lib/translations/custom_generator.dart generate
```

This will generate `locale_keys.s.dart` inside `lib/translations/`.

---

# Flutter için Locale Keys Generator

Bu Dart betiği, bir JSON çeviri dosyasından otomatik olarak `MyLocaleKeys` sınıfını oluşturur. Bu sayede Flutter projenizde çeviri anahtarlarını sabit olarak tanımlayabilir ve "magic string" kullanımını azaltabilirsiniz.

## Özellikler
- İç içe geçmiş çeviri anahtarlarını okur
- Her bir anahtar için camelCase formatında sabit üretir
- `lib/translations/` altında `locale_keys.s.dart` dosyasını oluşturur

## Gereksinimler
- Dart SDK

## Dosya Yapısı
```
proje_kök_dizini/
├── assets/
│   └── translations/
│       └── en.json
├── lib/
│   └── translations/
│       └── custom_generator.dart
```

## Nasıl Kullanılır?
Terminalden aşağıdaki komutlardan birini çalıştırın:

### Seçenek 1 (`lib/translations/` dizinindeyseniz):
```sh
dart custom_generator.dart generate
```

### Seçenek 2 (proje kök dizinindeyseniz):
```sh
dart lib/translations/custom_generator.dart generate
```

Bu işlem sonucunda `lib/translations/` klasörüne `locale_keys.s.dart` dosyası oluşturulur.

