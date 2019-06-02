import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: Stack(
        children: [
           Opacity(
            opacity: 0.3,
            child: const ModalBarrier(dismissible: false, color: Colors.grey),
          ),
           Center(
            child:  CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}