# Flutter Base Project


-  This is a project template that includes several libraries to help in the development process of a Flutter project using the MVVM architecture. The template includes different layers such as base, constants, extensions, init, and view-model base. It also includes libraries for state management, localization, cache, network, and serialization, among others. The template has predefined code for building views and view-models, making it easier for developers to focus on page designs and business logic.

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
  - Can be moved from project to project. The structures it contains can be used smoothly in every project.
  
  - In a project based on MVVM architecture, we create the base structures of Model-View-ViewModel layers from here.
 
- Constants 
  - Folder where values that will not change throughout the application and can be used from start to finish are kept.
  
  - Includes Navigation names that will be used by application Path, Enum values, Image constants, Navigation paths.
  
- Extensions
  - Extensions that can be used in every part of the project in terms of clean code mentality are essential.

  - context_extension => the place where values such as width, height, padding, and duration are kept within the application.
  
- Init
  - The place where important controls such as cache, lang, navigation, network, notifier, and theme are managed for a mobile application.
  
  - cache => contains locale manager for managing application cache in this section.
  
  - lang => contains language manager for localization. For localization, the languages that will be localized should be put into folders such as en-US.json, tr-TR.json under assets/lang. After any changes made in these folders, the command "flutter pub run easy_localization:generate -O lib/core/init/lang -f keys -o locale_keys.g.dart -S assets/lang" should be written in the terminal.
  
  - navigation => the place where navigation service and navigation routes are provided.
  
  - network => used for managing web scraping operations from websites using Dio
  
  - notifier =>  manages theme changes between dark and light themes with theme notifier.
  
  - theme => used for managing the application's theme.
  
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
     - Bu konuların çoğunu öğrenmemde katkısı olan HardwareAndro Youtube Kanalına => https://www.youtube.com/@HardwareAndro ve bu eğitimleri veren Veli Bacık'a teşekkürler => https://github.com/VB10
