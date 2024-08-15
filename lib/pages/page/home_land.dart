import 'package:flutter/material.dart';
import 'package:landing_mult_chat/pages/page/landing_pages.dart';
import 'package:landing_mult_chat/pages/page/navegar_para.dart';

class HomeLander extends StatefulWidget {
  const HomeLander({super.key});

  @override
  State<HomeLander> createState() => _HomeLanderState();
}

class _HomeLanderState extends State<HomeLander> {
  late TextEditingController email = TextEditingController();
  late TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Realize seu login", style: TextStyle(fontSize: 24)),
                const Text(
                  "Antes de ter acesso ao aplicativo, por favor, realize o login no sistema",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                Form(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                          controller: email,
                          autocorrect: true,
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          maxLength: 60,
                          maxLines: 1,
                          decoration: const InputDecoration(
                              hintText: "seu_email@gmail.com",
                              border: InputBorder.none),
                          validator: (value) {
                            if (value.toString().contains("@") &&
                                value.toString().contains(".")) {
                              return null;
                            } else {
                              return "Por favor, insira um e-mail válido.";
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(6),
                        margin: const EdgeInsets.only(top: 12),
                        child: TextFormField(
                          controller: senha,
                          autocorrect: false,
                          keyboardType: TextInputType.visiblePassword,
                          autofocus: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          maxLength: 16,
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: const InputDecoration(
                              hintText: "********", border: InputBorder.none),
                          validator: (value) {
                            if (value.toString().length > 6) {
                              return null;
                            } else {
                              return "A senha deve conter mais de 6 dígitos.";
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Esqueceu a senha?",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 16),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                        ),
                        onPressed: () {
                          if (email != false && senha != false) {
                            navegarPara(context, const LandingPage());
                          }
                        },
                        child: const Text(
                          "Entrar",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ))),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ainda não foi cadastrado?"),
                    Text(
                      "Cadastrar-se",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                    ),
                  ],
                ),
                const Text("Conecte-se com suas redes sociais"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "images/facebook.png",
                      height: 50,
                      width: 50,
                    ),
                    Image.asset(
                      "images/twitter.png",
                      height: 50,
                      width: 50,
                    ),
                    Image.asset(
                      "images/instagram.png",
                      height: 50,
                      width: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
