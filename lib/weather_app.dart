import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: "Enter city name",
                border: OutlineInputBorder(),
              ),
            ),
            Column(
              children: [
                Image.asset(
                  "assets/images/profile.jpg",
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "New York",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "38",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Person person = const Person(name: 'Anita', age: '5');
                Person person1 = const Person(name: 'Anita', age: '5');

                print(person.hashCode.toString());
                print('Hi ${person1.hashCode.toString()}');

                print(person == person1);
                // print(person == person);
              },
              child: const Text("Get Weather"),
            )
          ],
        ),
      ),
    );
  }
}

class Person extends Equatable {
  final String name;
  final String age;

  const Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
  // @override
  // bool operator ==(Object b) {
  //   return identical(this, b) ||
  //       b is Person &&
  //           runtimeType == b.runtimeType &&
  //           name == b.name &&
  //           age == b.age;
  // }

  // @override
  // int get hashCode => name.hashCode ^ age.hashCode;
}
