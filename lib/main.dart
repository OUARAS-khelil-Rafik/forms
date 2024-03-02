// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    home: const Forms(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        // ignore: prefer_const_constructors
        scrollbarTheme: ScrollbarThemeData(
      thickness: MaterialStateProperty.all(10),
      thumbColor: MaterialStateProperty.all(Colors.purple.shade300),
      //radius: const Radius.circular(70),
      radius: const Radius.elliptical(80, 60),
      thumbVisibility: MaterialStateProperty.all(false),
    )),
  ));
}

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  final listBody = ["Small", "Medium", "Large", "XLarge"];
  int _val = 0;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;
  final TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Forms",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
      body: Scrollbar(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Material(
                  child: Form(
                      key: formKey,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                    child: Text(
                                  "Forms",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                )),
                                const Text(
                                  "Fisrt name :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(
                                  height: 20,
                                  //indent: 3,
                                  //endIndent: 30,
                                  thickness: 3,
                                  color: Colors.purple,
                                ),
                                TextFormField(
                                  cursorColor: Colors.purple,
                                  decoration: InputDecoration(
                                    labelText: "Fisrt name",
                                    hintText: "Fisrt name",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(21),
                                        borderSide: const BorderSide(
                                            color: Colors.purple)),
                                    prefixIcon: const Icon(
                                      Icons.people_alt,
                                      color: Colors.purple,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.trim().isEmpty) {
                                      return "First name required";
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Last name :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(
                                  height: 20,
                                  //indent: 3,
                                  //endIndent: 30,
                                  thickness: 3,
                                  color: Colors.purple,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: "Last name",
                                      hintText: "Last name",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(21),
                                          borderSide: const BorderSide(
                                              color: Colors.purple)),
                                      prefixIcon: const Icon(
                                        Icons.people_alt,
                                        color: Colors.purple,
                                      )),
                                  validator: (value) {
                                    if (value!.trim().isEmpty) {
                                      return "Last name required";
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Email :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(
                                  height: 20,
                                  //indent: 3,
                                  //endIndent: 30,
                                  thickness: 3,
                                  color: Colors.purple,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    hintText: "Email",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(21),
                                        borderSide: const BorderSide(
                                            color: Colors.purple)),
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: Colors.purple,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.trim().isEmpty) {
                                      return "Email required";
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Date of birth :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(
                                  height: 20,
                                  //indent: 3,
                                  //endIndent: 30,
                                  thickness: 3,
                                  color: Colors.purple,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                        flex: 10,
                                        child: TextFormField(
                                          controller: dateController,
                                          decoration: InputDecoration(
                                              labelText: "Date of birth",
                                              hintText: "Date of birth",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(21),
                                                  borderSide: const BorderSide(
                                                      color: Colors.purple)),
                                              prefixIcon: const Icon(
                                                Icons.calendar_month,
                                                color: Colors.purple,
                                              )),
                                          onTap: () async {
                                            DateTime? pickedDate =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(1900),
                                                    lastDate: DateTime.now());
                                            if (pickedDate != null) {
                                              String formattedDate =
                                                  DateFormat.yMMMMd('en_US')
                                                      .format(pickedDate);
                                              setState(() {
                                                dateController.text =
                                                    formattedDate.toString();
                                              });
                                            } else {
                                              print("Not selected");
                                            }
                                          },
                                          validator: (value) {
                                            if (value!.trim().isEmpty) {
                                              return "Age required";
                                            }
                                            return null;
                                          },
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Adress :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(
                                  height: 20,
                                  //indent: 3,
                                  //endIndent: 30,
                                  thickness: 3,
                                  color: Colors.purple,
                                ),
                                TextFormField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                      labelText: "Adress",
                                      hintText: "Adress",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(21),
                                          borderSide: const BorderSide(
                                              color: Colors.purple)),
                                      prefixIcon: const Icon(
                                        Icons.map,
                                        color: Colors.purple,
                                      )),
                                  validator: (value) {
                                    if (value!.trim().isEmpty) {
                                      return "Adress required";
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Product Sizes :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(
                                  height: 20,
                                  //indent: 3,
                                  //endIndent: 30,
                                  thickness: 3,
                                  color: Colors.purple,
                                ),
                                DropdownButtonFormField(
                                  items: listBody
                                      .map((e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ))
                                      .toList(),
                                  onChanged: ((val) {}),
                                  icon: const Icon(
                                    Icons.arrow_drop_down_circle,
                                    color: Colors.purple,
                                  ),
                                  dropdownColor: Colors.purple.shade200,
                                  decoration: InputDecoration(
                                    hintText: "Product Sizes",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(21),
                                        borderSide: const BorderSide(
                                            color: Colors.purple)),
                                    prefixIcon: const Icon(
                                      Icons.accessibility_new_rounded,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Sexe :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(
                                  height: 20,
                                  //indent: 3,
                                  //endIndent: 30,
                                  thickness: 3,
                                  color: Colors.purple,
                                ),
                                RadioListTile(
                                    title: const Text(
                                      "Man",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: const Text("Sexe"),
                                    value: 1,
                                    groupValue: _val,
                                    onChanged: ((val) {
                                      setState(() {
                                        _val = val!;
                                      });
                                    }),
                                    activeColor: Colors.purple),
                                RadioListTile(
                                    title: const Text("Woman",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    subtitle: const Text("Sexe"),
                                    value: 2,
                                    groupValue: _val,
                                    onChanged: ((val) {
                                      setState(() {
                                        _val = val!;
                                      });
                                    }),
                                    activeColor: Colors.pink),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Skills :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(
                                  height: 20,
                                  //indent: 3,
                                  //endIndent: 30,
                                  thickness: 3,
                                  color: Colors.purple,
                                ),
                                CheckboxListTile(
                                  value: _isChecked1,
                                  title: const Text("Flutter"),
                                  subtitle: const Text("Programmation langage"),
                                  activeColor: Colors.purple,
                                  checkColor: Colors.white,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  onChanged: (val) {
                                    setState(() {
                                      _isChecked1 = val!;
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  value: _isChecked2,
                                  title: const Text("C++"),
                                  subtitle: const Text("Programmation langage"),
                                  activeColor: Colors.purple,
                                  checkColor: Colors.white,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  onChanged: (val) {
                                    setState(() {
                                      _isChecked2 = val!;
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  value: _isChecked3,
                                  title: const Text("Matlab"),
                                  subtitle: const Text("Programmation langage"),
                                  activeColor: Colors.purple,
                                  checkColor: Colors.white,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  onChanged: (val) {
                                    setState(() {
                                      _isChecked3 = val!;
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  value: _isChecked4,
                                  title: const Text("Java"),
                                  subtitle: const Text("Programmation langage"),
                                  activeColor: Colors.purple,
                                  checkColor: Colors.white,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  onChanged: (val) {
                                    setState(() {
                                      _isChecked4 = val!;
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  value: _isChecked5,
                                  title: const Text("Python"),
                                  subtitle: const Text("Programmation langage"),
                                  activeColor: Colors.purple,
                                  checkColor: Colors.white,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  onChanged: (val) {
                                    setState(() {
                                      _isChecked5 = val!;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Password :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Divider(
                                  height: 20,
                                  //indent: 3,
                                  //endIndent: 30,
                                  thickness: 3,
                                  color: Colors.purple,
                                ),
                                TextFormField(
                                  cursorColor: Colors.purple,
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    hintText: "Pasword",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(21),
                                        borderSide: const BorderSide(
                                            color: Colors.purple)),
                                    prefixIcon: const Icon(
                                      Icons.key,
                                      color: Colors.purple,
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () => setState(() {
                                        _obscureText = !_obscureText;
                                      }),
                                      icon: Icon(_obscureText
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      color: Colors.purple,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.trim().isEmpty) {
                                      return "Password required";
                                    }
                                    if (value.length < 8) {
                                      return "Password need to be at least 8 characters";
                                    }
                                    return null;
                                  },
                                  obscureText: _obscureText, // for password
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: ElevatedButton.icon(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        print("The form is valid");
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.purple,
                                      foregroundColor: Colors.white,
                                    ),
                                    label: const Text("Sumbit"),
                                    icon: Icon(
                                      Icons.arrow_circle_right,
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )));
            }),
      ),
    );
  }
}
