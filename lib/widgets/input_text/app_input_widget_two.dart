import 'package:aura/const/app_colors.dart';
import 'package:aura/const/app_const.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:flutter/material.dart';

class AppInputWidgetTwo extends StatefulWidget {
  const AppInputWidgetTwo({
    super.key,
    this.hintText,
    this.prefix,
    this.suffixIcon,
    this.isPassWord = false,
    this.isEmail = false,
    this.textInputAction = TextInputAction.next,
    this.controller,
    this.keyboardType,
    this.fillColor,
    this.elevation = 0.0,
    this.elevationColor,
    this.minLines = 1,
    this.readOnly = false,
    this.border,
    this.errBorder,
    this.borderRadius,
    this.contentPadding,
    this.style,
    this.maxLines,
    this.onFieldSubmitted,
    this.onTap,
    this.onChanged,
    this.isPassWordSecondValidation = false,
    this.isOptional = false,
    this.isPassWordSecondValidationController,
    this.title,
    this.validator,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.textAlignVertical,
    this.filled = true, // Default value for filled is set to true
  });

  final String? hintText;
  final Widget? prefix;
  final Widget? suffixIcon;
  final bool isPassWord;
  final bool readOnly;
  final bool isEmail;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final bool filled; // Now it's optional with a default value of true
  final double elevation;
  final Color? elevationColor;
  final int minLines;
  final int? maxLines;
  final InputBorder? border;
  final InputBorder? errBorder;
  final double? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? style;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final TextAlignVertical? textAlignVertical;
  final bool isPassWordSecondValidation;
  final bool isOptional;
  final TextEditingController? isPassWordSecondValidationController;
  final String? title;
  final FormFieldValidator<String>? validator;

  @override
  State<AppInputWidgetTwo> createState() => _AppInputWidgetTwoState();
}

class _AppInputWidgetTwoState extends State<AppInputWidgetTwo> {
  bool isShowPassWord = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: widget.elevation,
      shadowColor: widget.elevationColor,
      borderOnForeground: false,
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(
        AppSize.width(value: widget.borderRadius ?? 8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null)
            Row(
              children: [
                Text(
                  widget.title!,
                  style: TextStyle(
                    fontSize: AppSize.width(value: 14),
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppConst.fontFamily1,
                  ),
                ),
                if (!widget.isOptional)
                  Text(
                    ' *',
                    style: TextStyle(
                      color: AppColors.instance.red1,
                      fontSize: AppSize.width(value: 14),
                      fontFamily: AppConst.fontFamily1,
                    ),
                  ),
              ],
            ),
          const SizedBox(height: 8), // Space between title and TextField
          TextFormField(
            cursorColor: AppColors.instance.black,
            onChanged: widget.onChanged,
            onTap: widget.onTap,
            onFieldSubmitted: widget.onFieldSubmitted,
            readOnly: widget.readOnly,
            controller: widget.controller,
            minLines: widget.minLines,
            maxLines: widget.maxLines ?? 1,
            validator: widget.validator, // Apply the validator
            keyboardType: widget.isEmail
                ? TextInputType.emailAddress
                : widget.keyboardType,
            textInputAction: widget.textInputAction,
            obscureText: widget.isPassWord && isShowPassWord,
            obscuringCharacter: "*",
            textAlignVertical: widget.textAlignVertical ?? TextAlignVertical.center,
            style: widget.style ?? TextStyle(
              height: 2,
              fontFamily: AppConst.fontFamily1,
              fontWeight: FontWeight.w500,
              color: AppColors.instance.black,
            ),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.instance.black.withValues(alpha: .5),
              ),
              filled: widget.filled, // Use the filled property
              fillColor: widget.fillColor ?? Colors.white, // White fill color
              contentPadding: widget.contentPadding ?? const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              prefixIcon: widget.prefix != null
                  ? Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: widget.prefix,
                    )
                  : null,
              suffixIcon: widget.isPassWord
                  ? IconButton(
                      color: AppColors.instance.red1,
                      padding: EdgeInsets.zero,
                      iconSize: 16,
                      onPressed: () {
                        setState(() {
                          isShowPassWord = !isShowPassWord;
                        });
                      },
                      icon: isShowPassWord
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    )
                  : widget.suffixIcon,
              prefixIconConstraints:
                  widget.prefixIconConstraints ?? const BoxConstraints(maxWidth: 40, maxHeight: 40),
              suffixIconConstraints:
                  widget.suffixIconConstraints ?? const BoxConstraints(maxWidth: 40, maxHeight: 40),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.instance.grey),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 12.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.instance.grey),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 12.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.instance.grey),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 12.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.instance.red1),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 12.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.instance.red1),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 12.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// class AppInputWidgetTwo extends StatefulWidget {
//   const AppInputWidgetTwo({
//     super.key,
//     this.hintText,
//     this.prefix,
//     this.suffixIcon,
//     this.isPassWord = false,
//     this.isEmail = false,
//     this.textInputAction = TextInputAction.next,
//     this.controller,
//     this.keyboardType,
//     this.fillColor,
//     this.elevation = 0.0,
//     this.elevationColor,
//     this.minLines = 1,
//     this.readOnly = false,
//     this.border,
//     this.errBorder,
//     this.borderRadius,
//     this.contentPadding,
//     this.style,
//     this.maxLines,
//     this.onFieldSubmitted,
//     this.onTap,
//     this.filled = true,
//     this.prefixIconConstraints,
//     this.textAlignVertical,
//     this.suffixIconConstraints,
//     this.onChanged,
//     this.isPassWordSecondValidation = false,
//     this.isOptional = false,
//     this.isPassWordSecondValidationController,
//     this.title, // Added for title
//   });

//   final String? hintText;
//   final Widget? prefix;
//   final Widget? suffixIcon;
//   final bool isPassWord;
//   final bool readOnly;
//   final bool isEmail;
//   final TextInputAction? textInputAction;
//   final TextEditingController? controller;
//   final TextInputType? keyboardType;
//   final Color? fillColor;
//   final bool filled;
//   final double elevation;
//   final Color? elevationColor;
//   final int minLines;
//   final int? maxLines;
//   final InputBorder? border;
//   final InputBorder? errBorder;
//   final double? borderRadius;
//   final EdgeInsetsGeometry? contentPadding;
//   final TextStyle? style;
//   final BoxConstraints? prefixIconConstraints;
//   final BoxConstraints? suffixIconConstraints;
//   final void Function(String)? onFieldSubmitted;
//   final void Function()? onTap;
//   final void Function(String)? onChanged;
//   final TextAlignVertical? textAlignVertical;
//   final bool isPassWordSecondValidation;
//   final bool isOptional;
//   final TextEditingController? isPassWordSecondValidationController;
//   final String? title; // Added for title

//   @override
//   State<AppInputWidgetTwo> createState() => _AppInputWidgetTwoState();
// }

// class _AppInputWidgetTwoState extends State<AppInputWidgetTwo> {
//   bool isShowPassWord = true;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       elevation: widget.elevation,
//       shadowColor: widget.elevationColor,
//       borderOnForeground: false,
//       color: Colors.transparent,
//       borderRadius: BorderRadius.circular(
//         AppSize.width(value: widget.borderRadius ?? 8.0),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           if (widget.title != null)
//             Row(
//               children: [
//                 if (widget.title != null)
//                   Row(
//                     children: [
//                       Text(
//                         widget.title!,
//                         style: TextStyle(
//                           fontSize: AppSize.width(value: 14),
//                           color: Colors.black,
//                           fontWeight: FontWeight.w500,
//                           fontFamily: AppConst.fontFamily1,
//                         ),
//                       ),
//                       if (!widget.isOptional)
//                         Text(
//                           ' *',
//                           style: TextStyle(
//                             color: AppColors.instance.red1,
//                             fontSize: AppSize.width(value: 14),
//                             fontFamily: AppConst.fontFamily1,
//                           ),
//                         ),
//                     ],
//                   ),
//               ],
//             ),
//           const SizedBox(height: 8), // Space between title and TextField
//           TextFormField(
//             cursorColor: AppColors.instance.black,
//             onChanged: widget.onChanged,
//             onTap: widget.onTap,
//             onFieldSubmitted: widget.onFieldSubmitted,
//             readOnly: widget.readOnly,
//             controller: widget.controller,
//             minLines: widget.minLines,
//             maxLines: widget.maxLines ?? 1,
//             validator: (value) {
//               if (widget.isOptional) return null;
//               if (value == null || value.isEmpty) {
//                 return "This field is required";
//               }
//               if (widget.isPassWord && value.length < 8) {
//                 return "Must be at least 8 characters.";
//               }
//               if (widget.isEmail) {
//                 const pattern =
//                     // ignore: prefer_adjacent_string_concatenation
//                     r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"+
//                     r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'+
//                     r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'+
//                     r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'+
//                     r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'+
//                     r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f'+
//                     r'\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
//                 final regex = RegExp(pattern);
//                 if (regex.hasMatch(value)) return null;
//                 return "Please provide a valid email address";
//               }
//               if (widget.isPassWord && widget.isPassWordSecondValidation) {
//                 if (widget.isPassWordSecondValidationController != null) {
//                   if (value.toLowerCase() !=
//                       widget.isPassWordSecondValidationController!.text
//                           .toLowerCase()) {
//                     return "Both passwords must match";
//                   }
//                 }
//               }
//               return null;
//             },
//             keyboardType: widget.isEmail
//                 ? TextInputType.emailAddress
//                 : widget.keyboardType,
//             textInputAction: widget.textInputAction,
//             obscureText: widget.isPassWord && isShowPassWord,
//             obscuringCharacter: "*",
//             textAlignVertical:
//                 widget.textAlignVertical ?? TextAlignVertical.center,
//             style:
//                 widget.style ?? 
//                 TextStyle(
//                   height: 2,
//                   fontFamily: AppConst.fontFamily1,
//                   fontWeight: FontWeight.w500,
//                   color: AppColors.instance.black,
//                 ),
//             decoration: InputDecoration(
//               hintText: widget.hintText,
//               hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
//                 color: AppColors.instance.black.withValues(alpha: .5),
//               ),
//               filled: widget.filled,
//               fillColor: widget.fillColor ?? Colors.white, // White fill color
//               contentPadding:
//                   widget.contentPadding ?? const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//               prefixIcon: widget.prefix != null
//                   ? Padding(
//                       padding: const EdgeInsets.only(left: 8.0), // Padding added here
//                       child: widget.prefix,
//                     )
//                   : null,
//               suffixIcon: widget.isPassWord
//                   ? IconButton(
//                       color: AppColors.instance.red1,
//                       padding: EdgeInsets.zero,
//                       iconSize: 16,
//                       onPressed: () {
//                         setState(() {
//                           isShowPassWord = !isShowPassWord;
//                         });
//                       },
//                       icon: isShowPassWord
//                           ? const Icon(Icons.visibility)
//                           : const Icon(Icons.visibility_off),
//                     )
//                   : widget.suffixIcon,
//               prefixIconConstraints:
//                   widget.prefixIconConstraints ?? const BoxConstraints(maxWidth: 40, maxHeight: 40),
//               suffixIconConstraints:
//                   widget.suffixIconConstraints ?? const BoxConstraints(maxWidth: 40, maxHeight: 40),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(color: AppColors.instance.grey),
//                 borderRadius: BorderRadius.circular(
//                   widget.borderRadius ?? 12.0,
//                 ),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: AppColors.instance.grey,
//                 ), // Custom border color
//                 borderRadius: BorderRadius.circular(
//                   widget.borderRadius ?? 12.0,
//                 ),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: AppColors.instance.grey,
//                 ), // Custom border color
//                 borderRadius: BorderRadius.circular(
//                   widget.borderRadius ?? 12.0,
//                 ),
//               ),
//               errorBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: AppColors.instance.red1),
//                 borderRadius: BorderRadius.circular(
//                   widget.borderRadius ?? 12.0,
//                 ),
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: AppColors.instance.red1),
//                 borderRadius: BorderRadius.circular(
//                   widget.borderRadius ?? 12.0,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


