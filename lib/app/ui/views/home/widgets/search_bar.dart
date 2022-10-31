//Limpio
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
const SearchBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.search),
        labelText: 'Find whatever you need',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none
        )
      ),
    );
  }
}