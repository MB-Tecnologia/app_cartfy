import 'package:get_it/get_it.dart';

import 'src/services/productService.dart';


// @InjectableInit
class InjectionContainer{
  
  static final getIt = GetIt.instance;
  static void registerDependencies(){
    getIt.registerFactory<ProductService>(() => ProductService());
  }
}