import 'package:flutter/material.dart';

List<Widget> buildColumnSpaced(List<Widget> children, double space) => [
  for (int i = 0; i < children.length; i++) ...[
    if (i != 0) SizedBox(height: space),
    children[i],
  ],
];

List<Widget> buildRowSpaced(List<Widget> children, double space) => [
  for (int i = 0; i < children.length; i++) ...[
    if (i != 0) SizedBox(width: space),
    children[i],
  ],
];
