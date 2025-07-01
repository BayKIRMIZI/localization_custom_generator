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

### Option 2 (if you're not in `lib/translations/` directory):
First navigate to the `lib/translations/` folder using:
```sh
cd ..            # Repeat this until you reach the root directory
cd lib/translations    # Then run this command
```
Then run:
```sh
dart custom_generator.dart generate
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

### Seçenek 2 (`lib/translations/` dizininde değilseniz):
Önce bu dizine geçmek için sırasıyla şu komutları kullanın:
```sh
cd ..            # Kök dizine gelene kadar bu komutu tekrarlayın
cd lib/translations    # Ardından bu komutu çalıştırın
```
Ardından şu komutu girin:
```sh
dart custom_generator.dart generate
```

Bu işlem sonucunda `lib/translations/` klasörüne `locale_keys.s.dart` dosyası oluşturulur.

