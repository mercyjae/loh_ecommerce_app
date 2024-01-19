import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class SearchTextField extends StatelessWidget {
  final String? Function(String?)? validator;
  final String hint;
  final bool readonly;
  final Color? fillColor;
  final VoidCallback? onTap;
  final VoidCallback? onClearQuery;
  final VoidCallback? onEditingComplete;
  final Function(String)? onFieldSubmitted;
  final Function(String) onChanged;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatter;

  const SearchTextField(
      {Key? key,
        this.readonly = false,
        required this.hint,
        this.fillColor,
        required this.onChanged,
        required this.controller,
        this.keyboardType = TextInputType.text,
        this.onTap,
        this.onClearQuery,
        this.onEditingComplete,
        this.onFieldSubmitted,
        this.inputFormatter,
        this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 46,
      width: size.width,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: fillColor ?? Colors.white,
          borderRadius: BorderRadius.circular(98),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 16),
        child: TextFormField(
          textAlign: TextAlign.start,
          validator: validator,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onFieldSubmitted,
          maxLines: 1,
          // style: GoogleFonts.archivo(
          //     fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          onChanged: onChanged,
          onTap: onTap,
          readOnly: readonly,
          autofocus: false,
          cursorColor: Colors.black,
          textInputAction: TextInputAction.next,
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            suffixIcon: InkWell(
              onTap: onClearQuery,
              child: const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Icon(Icons.clear_rounded),
              ),
            ),
            // hintStyle: GoogleFonts.poppins(
            //     fontSize: 14,
            //     color: Colors.grey,
            //     fontWeight: FontWeight.w500),

          ),
          keyboardType: keyboardType,
          inputFormatters: inputFormatter,
        ),
      ),
    );
  }
}
