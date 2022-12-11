import 'package:flutter/material.dart';
import 'main.dart';
import 'login.dart';

class SigninRoute extends StatelessWidget {
  SigninRoute({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/signup.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Full Name:',
                            prefixIcon: Icon(Icons.person),
                            border: UnderlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                              return "Name is Required";
                            }else{
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Age:',
                            prefixIcon: Icon(Icons.numbers),
                            border: UnderlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value)){
                              return "Enter a Numbers only";
                            }else{
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Sex:',
                            prefixIcon: Icon(Icons.transgender),
                            border: UnderlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Put your Gender';
                            },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Address:',
                            prefixIcon: Icon(Icons.house),
                            border: UnderlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Address is required';
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                        controller: _date,
                        decoration: InputDecoration(
                          labelText: 'Birthdate:',
                            prefixIcon: Icon(Icons.calendar_month),
                            border: UnderlineInputBorder(),
                        ),
                        onTap: () async {
                          DateTime? pickeddate = await showDatePicker(
                            context: context, 
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000), 
                            lastDate: DateTime(2023),
                            );
                            //if(pickeddate != null) {
                            //  setState(() {
                            //    _date.text = DateFormat('yMd').format(pickeddate);
                            //  });
                            // }
                        },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Number:',
                            prefixIcon: Icon(Icons.phone),
                            border: UnderlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value)){
                              return "Numers only";
                            }else{
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email:',
                            prefixIcon: Icon(Icons.email),
                            border: UnderlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}').hasMatch(value)){
                              return "Enter correct Email";
                            }else{
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password:',
                            prefixIcon: Icon(Icons.lock),
                            border: UnderlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Password is required';
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password:',
                            prefixIcon: Icon(Icons.lock),
                            border: UnderlineInputBorder(),
                          ),
                          onChanged: (String value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Comfirm your Password';
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100.0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              Navigator.pushNamed(context, '/');
                              return;
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Create Account'),
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                Icons.person_add,
                                size: 25.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
