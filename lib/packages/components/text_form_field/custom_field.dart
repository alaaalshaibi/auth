import 'package:flutter/material.dart';

class CustomFiled extends StatelessWidget {
  const CustomFiled({
    Key? key,
    String? initValue,
    Color? cursorColor,
    TextInputType? keyboardType,
    bool isObscure = false,
    String? Function(String?)? onValidator,
    void Function(String?)? onSaved,
    void Function(String)? onChanged,
    String? hintText,
    Widget? lable,
    String? labelText,
    String? helperText,
    Widget? pIcon,
    Widget? sIcon,
  })  : _initValue = initValue,
        _cursorColor = cursorColor,
        _keyboardType = keyboardType,
        _isObscure = isObscure,
        _onValidator = onValidator,
        _onSaved = onSaved,
        _onChanged = onChanged,
        _hintText = hintText,
        _lable = lable,
        _labelText = labelText,
        _helperText = helperText,
        _pIcon = pIcon,
        _sIcon = sIcon,
        super(key: key);
  final String? _initValue;
  final Color? _cursorColor;
  final TextInputType? _keyboardType;
  final bool _isObscure;
  final String? Function(String?)? _onValidator;
  final void Function(String?)? _onSaved;
  final void Function(String)? _onChanged;

  final String? _hintText;
  final Widget? _lable;
  final String? _labelText;
  final String? _helperText;
  final Widget? _pIcon;
  final Widget? _sIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: _initValue,
      cursorColor: _cursorColor,
      keyboardType: _keyboardType,
      obscureText: _isObscure,
      validator: _onValidator,
      onSaved: _onSaved,
      onChanged: _onChanged,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: _hintText,
        label: _lable,
        labelText: _labelText,
        helperText: _helperText,
        prefixIcon: _pIcon,
        suffixIcon: _sIcon,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        focusedBorder: const OutlineInputBorder(
          // borderRadius: BorderRadius.circular(),
          borderSide: BorderSide(),
        ),
        errorBorder: const OutlineInputBorder(
          // borderRadius: BorderRadius.circular(),
          borderSide: BorderSide(),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          //borderRadius: BorderRadius.circular(),
          borderSide: BorderSide(),
        ),
      ),
    );
  }
}
