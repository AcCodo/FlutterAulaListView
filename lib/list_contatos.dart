import 'package:aula/Contato.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  final List<Contato> listaContato = [
    Contato(nomeCompleto: "André Codo", email: "andreccodo@gmail.com"),
    Contato(nomeCompleto: "Gabriel Monteiro", email: "gabrielsmonteiro@gmail.com"),
    Contato(nomeCompleto: "Guilherme Garcia")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Lista Contatos')),
      ),
      body: ListView.builder(
        itemCount: listaContato.length,
        itemBuilder: ((context, index) {
          Contato cttAtual = listaContato[index];
          return ListTile(leading: CircleAvatar(child: Text(cttAtual.nomeCompleto == "" ? "" : cttAtual.nomeCompleto[0])),
                          title: Text(cttAtual.nomeCompleto),
                          subtitle: Text(cttAtual.email == null ? "" : cttAtual.email!),
          );
      })),
    );
  }
}
