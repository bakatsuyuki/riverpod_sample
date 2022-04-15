import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageCard extends StatelessWidget {
  const PageCard({
    Key? key,
    required this.routePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String routePath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return _InkWellCard(
      onTap: () => context.push(routePath),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Title(title),
          const SizedBox(height: 2),
          Expanded(child: _Description(description)),
        ],
      ),
    );
  }
}

class _InkWellCard extends StatelessWidget {
  const _InkWellCard({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  final Widget child;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) => Card(
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: onTap,
          child: Padding(padding: const EdgeInsets.all(12), child: child),
        ),
      );
}

class _Title extends StatelessWidget {
  const _Title(this.text, {Key? key}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context).textTheme.subtitle1,
      );
}

class _Description extends StatelessWidget {
  const _Description(this.text, {Key? key}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) => Text(
        text,
        style: Theme.of(context).textTheme.caption,
        overflow: TextOverflow.fade,
      );
}
