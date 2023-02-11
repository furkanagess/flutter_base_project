# Flutter Base Project

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
- Base 
  - Projeden projeye taşınabilir. İçinde bulundurduğu yapılar her projede sorunsuz kullanılabilir.
  
  - MVVM mimarisine göre yapılan bir projede bulunan Model-View-ViewModel katmanlarının base yapılarını buradan oluştururuz.
 
- Constants 
  - Uygulama içerisinde değişmeyecek olan uygulamanın başından sonuna sabit bir şekilde kullanılabilecek değerlerin tutulduğu klasördür.
  
  - Uygulama içi Path'ler, Enum değerleri, Image sabitleri, Navigation path'lerinin kullanacagı Navigation isimleri tutulur.
  
- Extensions
  - Uygulama içinde projenin her alanında kullanılabilecek, temiz kod mentalitesi açısından oldukça önemlidir extensionlar.

  - context_extension => uygulama içerisinde width, height değerleri ; padding değerleri, duration değerlerinin tutulduğu yerdir.
  
- Init
  - Bir mobil uygulama için oldukça önemli olan cache, lang, navigation, network, notifier, theme gibi başlıkların kontrolünün sağlandığı yerdir.
  
  - cache => locale manager içerir bu kısımdan uygulama içi cache yönetimi sağlanır
  
  - lang => language manager içerir bu kısımda Localization yapılır. Localization sağlanması için assets/lang'in altına en-US.json, tr-TR.json gibi localization      sağlanacak dillerin klasörlenmesi gerekir. Bu klasörlerde yapılan her bir değişiklikten sonra " flutter pub run easy_localization:generate  -O lib/core/init/lang -f keys -o locale_keys.g.dart -S assets/lang " kodu terminale yazılmalıdır.
  
  - navigation => navigation service'in ve navigation route'larının sağlandığı yerdir.
  
  - network => dio kullanılarak web sitelerinden api çekme işlemlerinin gerçekleştirilmesini yönetmek amacıyla kullanılır
  
  - notifier => theme notifier ile dark ve light theme arasında theme değişikliğinin yönetilmesini sağlar.
  
  - theme => uygulama içi theme yönetiminin sağlanmasına yarar.
  
# View Base  
 
