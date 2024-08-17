import 'package:app_cartfy/src/components/showProductResultDialog.dart';
import 'package:app_cartfy/src/models/productApp/productApp.dart';
import 'package:app_cartfy/src/services/productService.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../SizeScreen.dart';


class SearchProductComponent extends StatelessWidget {
  final Function(String) onSearchByDescription;
  final Function(ProductApp) onBarcodeFound;

  const SearchProductComponent({
    super.key,
    required this.onSearchByDescription,    
    required this.onBarcodeFound,
  });


  
   @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final List<String> _produtos = <String>[];
    
    final ProductService productService = GetIt.I<ProductService>();
    final sizeScreen = SizeScreen(context);
    final double widthScreen = sizeScreen.width;
    final double heightScreen = sizeScreen.height;
    return Container(
      child: Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(
          child: TextFormField(
            controller: textController,
            style: const TextStyle(fontSize: 32, color: Colors.red),
            decoration: const InputDecoration(
              hintText: "Digite o nome do produto",
              hintStyle: TextStyle(fontSize: 20),
          ),
          keyboardType: TextInputType.text,
          validator: (valor) {
            String texto = valor!;
            if (texto.trim().isEmpty) {
              return "Preencha o campo";
            }
            return null;
          },
        )),
        Container(
            margin: const EdgeInsets.only(left: 10),
            child: ElevatedButton(
              child: const Text('Pesquisar'),
              onPressed: () {

                // textController.clear();
                return onSearchByDescription(textController.text);
              }
                // if (_formKey.currentState!.validate()) {
                //   onSaerch
                //   textController.clear();
                // }
                // },
                ))
      ]),
      SizedBox(
          width: widthScreen * 0.8,
          height: 100,
          child: MobileScanner(
          controller: MobileScannerController(        
            returnImage: true,
            detectionTimeoutMs: 2000
          ),
          // fit: BoxFit.contain,
          onDetect: (capture) async {
            final Barcode barcode = capture.barcodes[0];            
                      

            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Codigo de barras lido"),
              duration: Duration(seconds: 3),
              backgroundColor: Colors.green,
            ));
            int gtin = int.parse(barcode.rawValue ?? "-1");
            var product = await productService.getByBarcode(gtin);
            
            showDialog(
              context: context,
              barrierLabel: "",
              barrierDismissible: false,
              builder: (BuildContext context) => ShowProductResult(product: product)).then((value) {
                product = value;
                return onBarcodeFound(product);
              });
             }
            // ); //TesteDialog()
            //   return onBarcodeFound(product);
          
          // fit: BoxFit.cover,
          // scanWindow: Rect.zero(),
          // placeholderBuilder: ,
          )
        )
      ]
      )
    );
  }
}

// class _SearchProductComponent extends State<SearchProductComponent> {
 
// }

// Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: TextFormField(
//                       controller: textController,
//                       style: const TextStyle(
//                         fontSize: 32,
//                         color: Colors.red
//                       ),
//                       decoration: const InputDecoration(
//                         hintText: "Digite o nome do produto",
//                         hintStyle: TextStyle(fontSize: 20),
//                       ),
//                       keyboardType: TextInputType.text,
//                       validator: (valor) {

//                         String texto = valor!;
//                         if(texto.trim().isEmpty){
//                           return "Preencha o campo";
//                         }
//                         return null;
//                       },
//                     )
//                   ),
//                   Container(
//                     margin: const EdgeInsets.only(left: 10),
//                       child: ElevatedButton(
//                         child: const Text('Pesquisar'),
//                         onPressed: (){
//                           if(_formKey.currentState!.validate()){
//                             setState(() {
//                               _produtos.add(textController.text);

//                             });
//                             textController.clear();
//                           }

//                       },
//                     )
//                   )
//                 ],
//               )
//             ),
//             Container(
//               margin: const EdgeInsets.all(10),
//               width: widthScreen * 0.7,
//               height: heightScreen * 0.05,
//               child: ElevatedButton(
//                 // color: Colors.yellow,
//                 child: const Text("Pesquisar codigo de barras"),
//                 onPressed: (){
//                   // Navigator.push(context, MaterialPageRoute(builder: builder))
//                   availableCameras().then((value) => Navigator.push(context,
//                   MaterialPageRoute(builder: (_) => const BarcodeScanner())));
//                 }
//               ),
//             )
