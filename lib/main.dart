import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Projeto Layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color:const Color.fromARGB(255, 250, 255, 220),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
               color: Colors.white.withOpacity(0.30), 
               spreadRadius: 5, 
               blurRadius: 7, 
               offset: const Offset(0, 3),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildInfoCard('ALUNO: Jean Gabriel Warenhuk dos Santos', Icons.person),
              const SizedBox(height: 25),
              _buildInfoCard('COLÉGIO: Colégio Estadual São Francisco de Assis', Icons.school),
              const SizedBox(height: 25),
              _buildInfoCard('CIDADE: Tunas do Paraná', Icons.location_city),
              const SizedBox(height: 25),
              _buildInfoCard('CURSO: Talento Tech', Icons.assignment),
              const SizedBox(height: 25),
              _buildInfoCard('DISCIPLINA: Desenvolvimento Web ', Icons.book),
              const SizedBox(height: 25),
              _buildInfoCard('PROFESSOR: Ariangelo Hauer Dias', Icons.person),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(String text, IconData icon) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
