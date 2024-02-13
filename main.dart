import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: '2ИСП11-27',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(344, 344, 235, 34),
          title: const Text('Авторизация'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Container(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Введите логин"),
                  keyboardType: TextInputType.emailAddress,
                  style: _sizeTextBlack,
                ),
                width: 400,
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Введите пароль"),
                  obscureText: true,
                  style: _sizeTextBlack,
                ),
                width: 400,
              ),
              Text(''),
              ElevatedButton(
                  child: const Text('Войти'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdRoute()),
                    );
                  }),
              Text(''),
              ElevatedButton(
                  child: const Text('Eсли нету аккаунта то зарегистрируйтесь'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()),
                    );
                  })
            ])));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  final sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(56, 90, 201, 0.737),
        title: const Text('Регистрация'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Введите никнейм"),
                  style: sizeTextBlack,
                ),
                width: 400,
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Введите почту"),
                  style: sizeTextBlack,
                  keyboardType: TextInputType.emailAddress,
                ),
                width: 400,
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Введите пароль"),
                  obscureText: true,
                  style: sizeTextBlack,
                ),
                width: 400,
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Подтвердите пароль"),
                  obscureText: true,
                  style: sizeTextBlack,
                ),
                width: 400,
              ),
              Text(''),
              ElevatedButton(
                  child: const Text('Зарегистрироваться'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdRoute()),
                    );
                  })
            ]),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(5, 92, 109, 0.749),
        title: const Text('Вы вошли в аккаунт'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Назад'),
        ),
      ),
    );
  }
}
