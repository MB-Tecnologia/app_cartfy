import 'package:flutter/material.dart';
import 'package:app_cartfy/src/pages/login-register/user_register.dart';
import 'package:app_cartfy/src/pages/main_page/main_page.dart';



class LoginCadastro extends StatelessWidget {
  const LoginCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4CAF50), Color.fromARGB(255, 129, 199, 199)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // circulo com o carrinho
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFC0C0C0), width: 5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 15,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('imgs/carrinho.png', fit: BoxFit.contain),
                  ),
                ),
                const SizedBox(height: 40),

                // campo email
                TextField(
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                const SizedBox(height: 15),

                // campo senha
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Senha',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                const SizedBox(height: 20),

                // botao entrar
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const MainPage()),
                      );
                    },
                    child: const Text("Entrar", style: TextStyle(fontSize: 25, color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 10),

                // cadastro email
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => const CadastroUsuario(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.fastLinearToSlowEaseIn;

                          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);

                          var fadeOutAnimation = secondaryAnimation.drive(
                            CurveTween(curve: Curves.easeOut),
                          );

                          return Stack(
                            children: [
                              FadeTransition(
                                opacity: fadeOutAnimation,
                                child: child,
                              ),
                              SlideTransition(
                                position: offsetAnimation,
                                child: child,
                              ),
                            ],
                          );
                        },
                        transitionDuration: const Duration(milliseconds: 700),
                      ),
                    );
                  },
                  icon: const Icon(Icons.email),
                  label: const Text("Cadastrar com email"),
                ),
                const SizedBox(height: 10),

                // logins google e facebook
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.g_mobiledata_sharp, color: Colors.red, size: 50,),
                        label: const Text("Entrar com google", textAlign: TextAlign.center),
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(0, 50),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook, color: Colors.blue, size:30),
                        label: const Text("Entrar com Facebook", textAlign: TextAlign.center),
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(0, 50),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
