import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Widgets/Common/BaseContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseImage.dart';
import 'package:flutter_kit/Widgets/Common/BaseColorButton.dart';
import 'package:flutter_kit/Widgets/Common/EmailField.dart';
import 'package:flutter_kit/Widgets/Common/InputRow.dart';
import 'package:flutter_kit/Widgets/Common/NameField.dart';
import 'package:flutter_kit/Widgets/Common/PasswordField.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var passKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        BaseImage(
          height: height / 2,
          width: width,
          imageUrl: 'assets/bgregister.jpg',
        ),
        Positioned(
            top: height / 20,
            right: 5,
            child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                ))),
        RegisterForm(height: height, width: width, formKey: _formKey),
      ],
    ));
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    Key key,
    @required this.height,
    @required this.width,
    @required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final double height;
  final double width;
  final GlobalKey<FormState> _formKey;

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool showTickIcon = false;
  @override
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
        height: widget.height / 1.5,
        width: widget.width,
        child: Form(
          key: widget._formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: widget.height * 0.075,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'New account',
                    style: TextStyle(
                        fontSize: widget.height / 26.9,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: widget.height * .037,
                ),
                InputRow(
                  height: widget.height / 13.4,
                  width: widget.width / 6.2,
                  icon: Icon(
                    Feather.user,
                    color: Color(0xFF565fbf),
                    size: widget.height / 26.9,
                  ),
                  inputField: NameField(),
                ),
                InputRow(
                  height: widget.height / 13.4,
                  width: widget.width / 6.2,
                  icon: Icon(
                    Icons.email_outlined,
                    color: Color(0xFF565fbf),
                    size: widget.height / 26.9,
                  ),
                  inputField: EmailField(),
                ),
                InputRow(
                  height: widget.height / 13.4,
                  width: widget.width / 6.2,
                  icon: Icon(
                    SimpleLineIcons.lock,
                    color: Color(0xFF565fbf),
                    size: widget.height / 26.9,
                  ),
                  inputField: PasswordField(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Container(
                    height: widget.height / 16,
                    width: widget.width,
                    child: BaseColorButton(
                      title: 'Create an account',
                      pressed: () {
                        if (widget._formKey.currentState.validate()) {
                          print('ok');
                        }
                      },
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'By signing up, you are agree to our \n  Terms and Conditions of use',
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
