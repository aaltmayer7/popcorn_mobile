import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popcorn_mobile/presentation/core/theme/app_colors.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String label;
  final double height;
  final double fontSize;
  final Function onPressed;
  final bool isRaised;
  final bool noBorder;
  final bool isLoading;

  const RoundedButtonWidget({
    Key key,
    this.onPressed,
    this.label,
    this.height,
    this.fontSize,
    this.isRaised = true,
    this.noBorder = false,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this.height != null ? this.height : 50,
      width: MediaQuery.of(context).size.width / 1.4,
      child: this.isRaised ? _raisedButton(context) : _outlineButton(context),
    );
  }

  Widget _raisedButton(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Color(primaryColor),
        ),
      ),
      onPressed: this.onPressed,
      color: Color(primaryColor),
      textColor: Colors.white,
      child: Text(
        "Se connecter",
        style: TextStyle(
          fontSize: 16,
          fontFamily: "ProductSansBold",
        ),
      ),
    );
  }

  Widget _outlineButton(BuildContext context) {
    return OutlineButton(
      onPressed: this.onPressed,
      textColor: Theme.of(context).primaryColor,
      borderSide: BorderSide(
        color:
            this.noBorder ? Colors.transparent : Theme.of(context).primaryColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        child: Text(
          this.label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: this.fontSize != null ? this.fontSize : 16,
            fontFamily: "ProductSansBold",
          ),
        ),
      ),
    );
  }
}
