import 'package:app_cartfy/src/components/searchProductComponent.dart';
import 'package:app_cartfy/src/components/showProductResultDialog.dart';
import 'package:app_cartfy/src/models/productApp/productApp.dart';
import 'package:app_cartfy/src/pages/makingProductList.dart';
import 'package:app_cartfy/src/services/productService.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';




class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }

}

class _HomeState extends State<Home>{
  final TextEditingController textController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final  List<String> _produtos = <String>[];

  final ProductService productService = GetIt.I<ProductService>();

  // final _barcodeScanner = BarcodeScanner();
  @override
  Widget build(BuildContext context) {      

    return Scaffold(
      appBar: AppBar(title: const Text("Cartfy")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(        
          children: <Widget>[
            SearchProductComponent(
              onSearchByDescription: (String description) async {              
              // Navigator.pop(context);
              ProductApp productApp = await productService.getByBarcode(7892840819170);              
              print("Teste");
              showDialog(context: context,
                 builder: (BuildContext context) => ShowProductResult(product: productApp),
                 barrierDismissible: false); //TesteDialog()
                //  builder: (BuildContext context) => ShowProductResultDialog(productApp: productApp,)); //TesteDialog()
                                 
              }, 
              // onSearchByBarcode: (String barcode) {
              
              // }, 
              onBarcodeFound: (ProductApp ) {  },
            ),     
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MakingProductList()));
              }, 
              child: const Text("Nova Lista"),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index){                  
                  return Card(
                    child: ListTile(
                      title: Text(_produtos[index]),
                    )
                  );
                },
              itemCount: _produtos.length,
              )
            )
          ]
        ),
      ),
    );
  }
}

