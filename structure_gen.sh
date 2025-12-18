#!/usr/bin/env bash
set -euo pipefail

# Root folder
ROOT="lib"

folders=(
  # app layer
  "$ROOT/app/theme"
  "$ROOT/app/flavors"

  # core layer
  "$ROOT/core/constants"
  "$ROOT/core/error"
  "$ROOT/core/network"
  "$ROOT/core/utils"

  # features → counter
  "$ROOT/features/counter/data/models"
  "$ROOT/features/counter/data/datasources"
  "$ROOT/features/counter/data/repository"

  "$ROOT/features/counter/domain/entities"
  "$ROOT/features/counter/domain/repository"
  "$ROOT/features/counter/domain/usecases"

  "$ROOT/features/counter/presentation/bloc"
  "$ROOT/features/counter/presentation/pages"
  "$ROOT/features/counter/presentation/widgets"
)

for f in "${folders[@]}"; do
  mkdir -p "$f"
  echo "Created $f"
done



# main.dart
cat > "$ROOT/main.dart" <<'EOF'
import 'package:flutter/material.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}
EOF


echo -e "\nFeature-first BLoC folder structure generated successfully!"
