import 'package:dart_define_to_manage_env/environment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart Define to Manage State',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, 
          title: const Text('github.com/ajazify'),
        ),
        body: SafeArea(
            child: Center(
          child: TextButton(onPressed: () => fetchApi(), child: const Text('Check Environment')),
        )),
      ),
    );
  }

  void fetchApi() {
    print('Call Base Url::${EnvironmentVariable.baseUrl}');
    print('Call Api Key::${EnvironmentVariable.apiKey}');
  }
}
