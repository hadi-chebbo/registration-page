import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Registration Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.lightGreen,

        title: Center(child: Text
          (
            widget.title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )
        ),

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
        
          child: Column(
        
        
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Row(

                  children: [

                    Expanded(child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('Name',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,),),
                        SizedBox(height: 16,),
                        TextField(
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(

                            hintText: "enter your full name",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ],
                    )
                    ),
                    SizedBox(height: 16,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phone Number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                        SizedBox(height: 16,),
                        TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "03/003003",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ],
                    ) ,
                    ),
        
                  ],
                ),
              SizedBox(height: 20,),
              Text('Email',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              SizedBox(height: 12,),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "test@gmail.com",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
        
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Country',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 16,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Lebanon",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          ),
                        )
                      ]
        
                  )
                  ),
                  SizedBox(height: 16,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Date of birth',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      SizedBox(height: 16,),
                      TextField(
                        keyboardType: TextInputType.datetime,
                        decoration:

                        InputDecoration(
                          hintText: "day/month/year",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
        
                        ),
                      )
                    ],
                  )
                  )
        
        
                ],
        
              ),
              SizedBox(height: 20,),
              Text('Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              SizedBox(height: 16,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText:"enter a strong password",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              Text('Confirm Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "re-enter your password",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(

                      onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      foregroundColor: Colors.white,
                    ),
                      child: Text('Register'),

                  ),
                ],
              ),
        
        
        
            ],
        
        
          ),
        ),
      ),
    );
  }
}
