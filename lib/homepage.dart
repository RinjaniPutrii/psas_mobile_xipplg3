import 'package:flutter/material.dart';
class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(
              fontSize: 35,
              color: Colors.teal,
              fontWeight: FontWeight.bold
            ),
          ),

          Form(
            child: Column(
                children: [

                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {

                      },
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter email' : null;
                      },
                  ),


                  SizedBox(height: 30,),
                  
                         TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter password',
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {

                      },
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter password' : null;
                      },
                  ),
                  SizedBox(height: 30,),
                  MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {},
                    child: Text('Login'),
                    color: Colors.teal,
                    textColor: Colors.white,
                    ),
                ],
            ),
          ),

        ],
      ),
      )
    );
  }
}