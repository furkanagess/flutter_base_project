# Flutter Base Project


-  Bir Flutter projesi geliştirme sürecinde ihtiyacınız olan çoğu mimarisel faktöre ulaşabileceğiniz bir proje.
-  Bu yapıları projenize dahil ettikten sonra genel hatlarıyla yapmanız gereken yalnızca sayfa tasarımlarıyla ve businesslarıyla uğraşmak kalıyor.
-  *Projede mimarisel olarak MVVM yaklaşımı kullanılmıştır*

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
  
# View-ViewModel Base  
- Proje Katmanları kısmında belirtilen mimari geliştirme süreçlerini tamamladıktan sonra genel olarak sayfa çizimlerine, view'ların içlerini doldurmaya başlayabiliriz.
- Bu kısımda uygulama içi view ve viewModellerimizi base katmanında yazdıgımız kodlarla entegre bir şekilde nasıl kullanabileceğimizi görüyoruz.
  
   # ViewModel
     - ViewModel kısmını yaparken öncelikle mobx snippetini kullanarak bir viewModel code generation'ı yapmaya başlıyoruz. (*Bu işlemi yaparken build_runner_watch işleminin aktif olduğunu dikkat ediniz.*)
     - Bu işlemi gerçekleştirdikten sonra mobx_codegen bizim yerimize viewModel.g.dart klasörüne generate kodlarımızı yazmaya başlıyor
     - View Modelimizi geliştirirken base kısmıdna yaptığımız base_view_model'i kullanıyoruz. Bu işlem için class'ın BaseViewModel yapısından türemesi için class'a with Store, BaseViewModel yapısını ekliyoruz.
     - Bu yapıları ekledikten sonra base_view_model'imizde bulunan setContext() ve init() fonksiyonlarımızı entegre ediyoruz.
     
  ![view-model-sample](https://user-images.githubusercontent.com/92018394/218278150-b6426b43-3f7b-4bc6-b82a-15a0da24c718.png)

   
   # View
     - View kısmını doldurmaya başlarken öncelikle base kısmında geliştirdiğimiz viev_base'den faydalanıyoruz.
     - Sayfamızı çizebilmek için return kısmına BaseView'ımızı ekliyoruz ancak bu BaseView viewModel'den türemelidir (*örn: BaseView<LoginViewModel>()*)
     - BaseView'ı entegre ettikten sonra base_view kısmında yazmış olduğumuz kodları burada doldurmaya başlıyoruz
     - viewModel => Çizdiğimiz sayfanın yukarıda nasıl entegre edilmesi gerektiğini anlattığım viewModel'ini veriyoruz.
     - onModelReady => Verdiğimiz modelin context etkileşimini kontrol ediyoruz.
     - onPageBuilder => Artık sayfamızın çizimine başladığımız kısımdır.
  
![view_template](https://user-images.githubusercontent.com/92018394/218277912-a1b5a500-c7c6-4866-b4fe-0c3838792bd6.png )

  # Dipnot
     -Bu konuların çoğunu öğrenmemde katkısı olan HardwareAndro Youtube Kanalına => https://www.youtube.com/@HardwareAndro ve bu eğitimleri veren Veli Bacık'a teşekkürler => https://github.com/VB10
