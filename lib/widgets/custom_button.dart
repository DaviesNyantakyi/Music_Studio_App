import 'package:flutter/material.dart';

class CustomElvatedButton extends StatefulWidget {
  final double? height;
  final double? width;

  final Color? backgroundColor;
  final Widget? child;
  final double? radius;
  final Function()? onPressed;
  const CustomElvatedButton({
    super.key,
    this.height,
    this.backgroundColor,
    this.width,
    this.child,
    this.radius,
    this.onPressed,
  });

  @override
  State<CustomElvatedButton> createState() => _CustomElvatedButtonState();
}

class _CustomElvatedButtonState extends State<CustomElvatedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(0),
          backgroundColor: MaterialStatePropertyAll(
            widget.backgroundColor,
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(widget.radius ?? 0),
              ),
            ),
          ),
        ),
        child: widget.child,
      ),
    );
  }
}
