import 'package:app_cartfy/src/components/searchProductComponent.dart';
import 'package:app_cartfy/src/components/tableProductList.dart';
import 'package:app_cartfy/src/models/productApp/productApp.dart';
import 'package:app_cartfy/src/services/productService.dart';
import 'package:flutter/material.dart';

import '../SizeScreen.dart';

class MakingProductList extends StatefulWidget{
  const MakingProductList({super.key});


  @override
  State<StatefulWidget> createState() {
    
    return _MakingProductListState();
  }
  
  
  
}

class _MakingProductListState extends State<MakingProductList>{
  final List<ProductApp> productList = [];
  void _addProduct(ProductApp product){
      productList.add(product);   
      
    }
  @override
  Widget build(BuildContext context) {    
    final sizeScreen = SizeScreen(context);
    final double widthScreen = sizeScreen.width;  
    final double heightScreen = sizeScreen.height;

    return Scaffold(
      appBar: AppBar(title: const Text("Fazendo Lista")),
      body: Column(
        children: [
          SearchProductComponent(
            onSearchByDescription: (String description) {

          },           
            onBarcodeFound: (product ) { 
              _addProduct(product);
          
          },
        ), DataTable(
            columnSpacing: 10,
            
            border: const TableBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(1, 1))
            ),
            columns: const <DataColumn>[
              DataColumn(
                label: Text("Nome", textAlign: TextAlign.center,),
                               
              ),
              DataColumn(
                label: Text("Preco"),
                // numeric: true
              ),
              DataColumn(
                label: Text("Quantidade"),
                // numeric: true
              ),
              DataColumn(
                label: Text("SubTotal"),
                // numeric: true              
              ),
              DataColumn(
                label: Text("Remover"),
                // numeric: true
              ),
            ],
            rows: productList.map(
              (p) => DataRow(cells: [
                DataCell(
                  SizedBox(
                    width: widthScreen * 0.3,
                    child:Text(p.description!.substring(0), overflow: TextOverflow.fade,)
                    )
                ),
                DataCell(Text(p.price!.toString())),
                DataCell(Text(p.quantity!.toString())),
                DataCell(Text(
                  (p.price! * p.quantity!).toString()
                )),
                DataCell(IconButton(
                    icon: const Icon(Icons.delete), 
                    onPressed: () {
                    },
                  )
                )
              ])).toList(),
            )
          
        ]
      )
    );
  }
}
