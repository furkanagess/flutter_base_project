# Flutter Base Projet

- Bir Flutter projesi geliştirme sürecinde ihtiyacınız olan çoğu mimarisel faktöre ulaşabileceğiniz bir proje.
-  Bu yapıları projenize dahil ettikten sonra genel hatlarıyla yapmanız gereken yalnızca sayfa tasarımlarıyla ve businesslarıyla uğraşmak kalıyor.
-  Proje Katmanları => Base Katmanı - Constants(Uygulama Sabitleri) - Extensions - Init

# Flutter Base Project Kütüphaneleri
- State Management
  - mobx => https://pub.dev/packages/mobx
  - flutter_mobx => https://pub.dev/packages/flutter_mobx
  - provider => https://pub.dev/packages/provider
  - mobx_codegen => https://pub.dev/packages/mobx_codegen
  - build_runner => https://pub.dev/packages/build_runner
  
- Localization
  - easy_localization => https://pub.dev/packages/easy_localization 

- Cache
  - shared_preferences => https://pub.dev/packages/shared_preferences

- Network 
  - dio => https://pub.dev/packages/dio

- Serializable
  - json_serializable => https://pub.dev/packages/json_serializable

# Proje Katmanları
 1-) Base Katmanı =>
 - Projeden projeye taşınabilir. İçinde bulundurduğu yapılar her projede sorunsuz kullanılabilir.
 - MVVM mimarisine göre yapılan bir projede bulunan Model-View-ViewModel katmanlarının base yapılarını buradan oluştururuz.
 
