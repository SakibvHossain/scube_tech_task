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

  # features → auth
  "$ROOT/features/auth/data/models"
  "$ROOT/features/auth/data/datasources"
  "$ROOT/features/auth/data/repository"

  "$ROOT/features/auth/domain/entities"
  "$ROOT/features/auth/domain/repository"
  "$ROOT/features/auth/domain/usecases"

  "$ROOT/features/auth/presentation/bloc"
  "$ROOT/features/auth/presentation/pages"
  "$ROOT/features/auth/presentation/widgets"
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
