import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollState();
}

class _InfiniteScrollState extends State<InfiniteScrollScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Vnetana con una lista infinita'),
    );
  }
}