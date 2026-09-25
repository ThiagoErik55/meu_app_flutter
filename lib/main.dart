import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de Pontos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const TelaPontos(titulo: 'Contador de Pontos'),
    );
  }
}

class TelaPontos extends StatefulWidget {
  const TelaPontos({super.key, required this.titulo});

  final String titulo;

  @override
  State<TelaPontos> createState() => _TelaPontosState();
}

class _TelaPontosState extends State<TelaPontos> {
  int pontos = 0;

  void _adicionarPonto() {
    setState(() {
      pontos++;
    });
  }

  void _removerPonto() {
    setState(() {
      if (pontos > 0) {
        pontos--;
      }
    });
  }

  void _zerarPontos() {
    setState(() {
      pontos = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.titulo),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sua pontuação',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                '$pontos',
                style: TextStyle(
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _removerPonto,
                    child: const Text('-1'),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: _adicionarPonto,
                    child: const Text('+1'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: _zerarPontos,
                child: const Text('Zerar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}