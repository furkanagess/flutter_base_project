if [ $3 == "bundle" ]
then
flutter build appbundle --build-name=$1 --build-number=$2
else
flutter build apk --build-name=$1 --build-number=$2i
fi

open build/app/outputs/flutter-apk