@echo off
rem Script for switching Firebase configurations (dev or prod)

rem Files being changed:
rem 1. ./firebase.json 
rem 2. ./lib/firebase_options.dart
rem 3. ./android/app/google-services.json

if [%1]==[] (
	echo "Provide a config type as argument (dev or prod)"
	exit /b
)

if %1==dev goto :setup_dev
if %1==prod goto :setup_prod
echo "Invalid config type"
exit /b

:setup_dev
type firebase_dev.json > firebase.json
type lib\firebase_options_dev.dart > lib\firebase_options.dart
type android\app\google-services_dev.json > android\app\google-services.json

echo "Switched to dev config"
exit /b

:setup_prod
type firebase_prod.json > firebase.json
type lib\firebase_options_prod.dart > lib\firebase_options.dart
type android\app\google-services_prod.json > android\app\google-services.json

echo "Switched to prod config"
exit /b
