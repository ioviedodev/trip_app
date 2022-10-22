
import 'package:flutter/material.dart';
import 'career.dart';


class SearchOption extends StatelessWidget {
  const SearchOption({super.key});


  static const List<Career> _careerOptions = <Career>[
    Career(name: 'Electronic Engineering',
        description: 'Electronics engineering is the branch of electrical engineering which deals with the uses of the electromagnetic spectrum and the application of such electronic devices as integrated circuits and transistors.'),
    Career(name: 'Telecommunication Engineering',
        description: 'A telecommunication engineer is responsible for designing and overseeing the installation of telecommunications equipment and facilities, such as complex electronic switching systems, and other plain old telephone service facilities, optical fiber cabling, IP networks, and microwave transmission systems.'),
    Career(name: 'Computer Science',
        description: 'Computer Science is the study of computers and computational systems. Unlike electrical and computer engineers, computer scientists deal mostly with software and software systems; this includes their theory, design, development, and application.'),
    Career(name: 'Civil Engineering',
        description: 'Civil engineers design major transportation projects. Civil engineers conceive, design, build, supervise, operate, construct and maintain infrastructure projects and systems in the public and private sector, including roads, buildings, airports, tunnels, dams, bridges, and systems for water supply and sewage treatment.'),
  ];

  static String _displayStringForOption(Career option) => option.name;

  void _onSelected(Career selection) {
    debugPrint('You just selected ${selection.description}');
  }

  Iterable<Career> _optionsBuilder(TextEditingValue textEditingValue) {
    if (textEditingValue.text == '') {
      return const Iterable<Career>.empty();
    }
    return _careerOptions.where((Career option) {
      return option
          .toString()
          .contains(textEditingValue.text.toLowerCase());
    });
  }


  TextField _fieldViewBuilder(BuildContext context,TextEditingController fieldTextEditingController,
      FocusNode fieldFocusNode, VoidCallback onFieldSubmitted) {
    return TextField(
      controller: fieldTextEditingController,
      focusNode: fieldFocusNode,
      decoration: const InputDecoration(filled: true, fillColor: Colors.indigo, labelText: "Input a career name"),
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
          fontFamily: "Lato", fontSize: 20.0),
    );
  }


  @override
  Widget build(BuildContext context) {

    return Autocomplete<Career>(
      displayStringForOption: _displayStringForOption,
      optionsBuilder: _optionsBuilder,
      onSelected: _onSelected,
      fieldViewBuilder: _fieldViewBuilder,
    );
  }


}