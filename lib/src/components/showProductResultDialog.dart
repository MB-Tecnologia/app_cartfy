import 'package:app_cartfy/src/SizeScreen.dart';
import 'package:app_cartfy/src/models/productApp/productApp.dart';
import 'package:app_cartfy/src/services/productService.dart';
import 'package:flutter/material.dart';

class ShowProductResult extends StatelessWidget{
  ProductApp product;
  ShowProductResult({super.key, required this.product});


  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final sizeScreen = SizeScreen(context);
    final double widthScreen = sizeScreen.width;  
    final double heightScreen = sizeScreen.height;
    return AlertDialog(
      
      content: SizedBox(
        width: widthScreen * 0.5,
        height: heightScreen * 0.4,
        child:
        Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image(
            errorBuilder: (context, error, stackTrace) {
              return const Text("Sem imagem");
            },
            image: NetworkImage(product.imgUrl!),
            width: widthScreen * 0.35,
            height: heightScreen * 0.13,
          ),
          TextFormField(
              // controller: _textEditingController,
              validator: (value) {
                return value!.isNotEmpty ? null : "Informe o nome";
              },
              onChanged: (value) {
                if(_formKey.currentState!.validate()){
                  product = product.copyWith(description: value);
                }
              },
              decoration:
                const InputDecoration(
                  hintText: "Nome do Produto",
                  labelText: "Nome"
                ),
              initialValue: product.description,
            ),
          TextFormField(
              // controller: _textEditingController,
            decoration: const InputDecoration(
                label: Text("Preco"),
                hintText: "Preço"
              ),
            keyboardType: TextInputType.number,
            initialValue: product.price != null? product.price.toString(): '0',
            autofocus: true,
            validator: (value) {         
              if(value == null || value.isEmpty) return "Informe o preco";
              value = value.replaceFirst(',', '.');
              if(double.parse(value) <= 0) return "Informe valores validos";
              
            },
            onChanged: (price) {
              if(_formKey.currentState!.validate()){
                  product = product.copyWith(price: double.parse(price));
                }
            },                        
          ),
          TextFormField(
              initialValue: product.quantity != null? product.quantity.toString(): '0',
              keyboardType: TextInputType.number,
              // controller: _textEditingController,
              validator: (value) {
                if(value == null || value.isEmpty) return "Informe o preco";
                if(int.parse(value) <= 0) return "Informe valores validos";
              },
              onChanged: (quantity) {
                if(_formKey.currentState!.validate()){
                  product = product.copyWith(quantity: int.parse(quantity));
                }
              },
              decoration:
                const InputDecoration(
                  hintText: "Quantidade",
                  labelText: "Quantidade",
                ),
            ),
            
          ],
        ))),
    title: const Text('Informações do Produto'),
    
    actions: <Widget>[
      InkWell(
        child: Text('OK   '),
        onTap: () {
          // if (_formKey.currentState.validate()) {
            // Do something like updating SharedPreferences or User Settings etc.
            
            Navigator.of(context).pop(product);
          }
        // },
      ),
    ],
  );
    // });
  }

}