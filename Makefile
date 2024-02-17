gen:
	flutter clean
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs
	dart format lib --set-exit-if-changed
	clear

run:
	flutter clean
	rm -rf ios/Pods ios/Podfile.lock
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs
	clean

