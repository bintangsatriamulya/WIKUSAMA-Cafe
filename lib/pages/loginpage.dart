import 'package:flutter/material.dart';
import 'package:wikusama_cafe/pages/Cashier/homepage.dart';
import 'package:wikusama_cafe/pages/forgotpasswordpage.dart';
import 'package:wikusama_cafe/pages/signuppage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double buttonWidth = screenWidth * 0.8;
    double textSize = screenWidth * 0.09;
    double subtitleSize = screenWidth * 0.035;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffe0c2a7),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color(0xFF59422E),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          color: const Color(0xffe0c2a7),
          child: Column(
            children: [
              //Text
              Text(
                'Welcome Back!',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontStyle: FontStyle.normal,
                    color: const Color(0xFF59422E),
                    fontSize: textSize,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: screenHeight * 0.005),
              Text(
                'Sign In to Continue.',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontStyle: FontStyle.normal,
                    color: const Color(0xFF59422E),
                    fontSize: subtitleSize,
                    fontWeight: FontWeight.w500),
              ),

              //Input
              SizedBox(height: screenHeight * 0.08),



              Container(
                child: Padding(
                    padding: EdgeInsets.all(buttonWidth * 0.1),
                    child: Form(
                      key: formKey,
                        child: Column(
                      children: [
                        Container(
                              padding: EdgeInsets.symmetric(horizontal: 16,vertical: buttonWidth *0.010),
                              decoration:
                              BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffF0E0D3),
                              border: Border.all(
                                  color: const Color(0xff805F43)),),

                              //Username
                              child: TextFormField(
                                controller: _usernameController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Username is required ';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.mail,
                                        color: Color(0xff805F43)),
                                    labelStyle: TextStyle(
                                      color: Color(0xFF463323),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Lato',
                                    ),
                                  hintText: 'Enter your username',
                                  hintStyle: TextStyle(
                                    color: Color(0xffA67C58),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Lato',
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                        SizedBox(height: screenHeight * 0.018,),

                        //Password
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: buttonWidth *0.010),
                          decoration:
                          BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF0E0D3),
                            border: Border.all(
                                color: const Color(0xff805F43)),),

                          //Username
                          child: TextFormField(
                            controller: _passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password is required ';
                              }
                              return null;
                            },
                            decoration: InputDecoration(

                              prefixIcon: const Icon(Icons.lock,
                                  color: Color(0xff805F43)),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: const Color(0xff805F43),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                              ),
                              labelStyle: const TextStyle(
                                color: Color(0xFF463323),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Lato',
                              ),
                              hintText: 'Enter your password',
                              hintStyle: const TextStyle(
                                color: Color(0xffA67C58),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Lato',
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                ),
              ),

          SizedBox(height: screenHeight * 0.003,),

          //Forgot Password
          Container(
            margin: EdgeInsets.symmetric(horizontal: buttonWidth * 0.10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Forgotpassword()),
                  );
                },
                child: const Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF59422E),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),


              //Forgot Password


              SizedBox(height: screenHeight * 0.02),
              ElevatedButton(
                onPressed: () {
                  if(formKey.currentState!.validate()){

                  }
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const HomePage()),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFFF5EBE2),
                  backgroundColor: const Color(0xFF805F43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: Size(buttonWidth, 60),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                child: RichText(
                  text: const TextSpan(
                    text: 'Don’t have an account? - ',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF59422E),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
