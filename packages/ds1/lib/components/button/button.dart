import 'package:flutter/material.dart';
import 'button_style.dart';

enum DSButtonType { solid, outline }

class DSButton extends StatefulWidget {
  final String label;
  final DSButtonType type;
  final String size;
  final bool fullWidth;
  final double? width;
  final IconData? icon;
  final bool isLoading;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final void Function()? onDoubleTap;
  final void Function(TapDownDetails)? onTapDown;
  final void Function(TapUpDetails)? onTapUp;
  final void Function()? onTapCancel;
  final void Function(bool)? onHighlightChanged;
  final void Function(bool)? onHover;

  const DSButton({
    super.key,
    this.label = 'Button',
    this.type = DSButtonType.solid,
    this.size = 'normal',
    this.fullWidth = false,
    this.isLoading = false,
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onHighlightChanged,
    this.onHover,
    this.width,
    this.icon,
  });

  @override
  State<DSButton> createState() => _DSButtonState();
}

class _DSButtonState extends State<DSButton> {
  @override
  Widget build(BuildContext context) {
    var box = solidBox(context);
    var textColor = solidTextColor;
    var padding = normalPadding;
    var fontSize = normalFontSize;
    var iconSize = normalIconSize;
    var height = normalHeight;

    if (widget.type == DSButtonType.outline) {
      box = outlineBox(context);
      textColor = outlineTextColor(context);
    }

    if (widget.size == 'mini') {
      padding = miniPadding;
      fontSize = miniFontSize;
      iconSize = miniIconSize;
      height = miniHeight;
    }

    return Container(
      width: widget.fullWidth ? double.infinity : widget.width,
      decoration: box,
      height: height,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: widget.isLoading ? null : widget.onTap,
          onLongPress: widget.isLoading ? null : widget.onLongPress,
          onDoubleTap: widget.isLoading ? null : widget.onDoubleTap,
          onTapDown: widget.isLoading ? null : widget.onTapDown,
          onTapUp: widget.isLoading ? null : widget.onTapUp,
          onTapCancel: widget.isLoading ? null : widget.onTapCancel,
          onHighlightChanged:
              widget.isLoading ? null : widget.onHighlightChanged,
          onHover: widget.isLoading ? null : widget.onHover,
          child: Padding(
            padding: padding,
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              children: [
                if (widget.icon != null && widget.isLoading == false)
                  Icon(
                    widget.icon,
                    color: textColor,
                    size: iconSize,
                  ),
                if (widget.isLoading == false)
                  Text(
                    widget.label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.isLoading == true)
                  SizedBox(
                    width: iconSize,
                    height: iconSize,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(textColor),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
