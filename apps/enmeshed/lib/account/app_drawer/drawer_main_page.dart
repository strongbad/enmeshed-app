import 'package:enmeshed_runtime_bridge/enmeshed_runtime_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '/core/core.dart';

class DrawerMainPage extends StatelessWidget {
  final VoidCallback goToNotifications;
  final VoidCallback goToHints;

  const DrawerMainPage({required this.goToNotifications, required this.goToHints, super.key});

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(32));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                context.l10n.drawer_title,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
              ),
              const Spacer(),
              IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.close)),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                onTap: goToNotifications,
                shape: const RoundedRectangleBorder(borderRadius: borderRadius),
                title: Text(context.l10n.drawer_notifications, style: Theme.of(context).textTheme.labelLarge),
              ),
              ListTile(
                onTap: goToHints,
                shape: const RoundedRectangleBorder(borderRadius: borderRadius),
                title: Text(context.l10n.drawer_hints, style: Theme.of(context).textTheme.labelLarge),
              ),
              const Divider(indent: 16, endIndent: 16),
              if (context.isFeatureEnabled('NEWS'))
                ListTile(
                  onTap: () => showNotImplementedDialog(context),
                  shape: const RoundedRectangleBorder(borderRadius: borderRadius),
                  title: Text(context.l10n.drawer_news, style: Theme.of(context).textTheme.labelLarge),
                ),
              if (context.isFeatureEnabled('HELP_AND_FAQ'))
                ListTile(
                  onTap: () => showNotImplementedDialog(context),
                  shape: const RoundedRectangleBorder(borderRadius: borderRadius),
                  title: Text(context.l10n.drawer_helpAndFaq, style: Theme.of(context).textTheme.labelLarge),
                ),
              const Divider(indent: 16, endIndent: 16),
              ListTile(
                onTap: () => context
                  ..pop()
                  ..push('/legal-notice'),
                shape: const RoundedRectangleBorder(borderRadius: borderRadius),
                title: Text(context.l10n.legalNotice, style: Theme.of(context).textTheme.labelLarge),
              ),
              ListTile(
                onTap: () => context
                  ..pop()
                  ..push('/data-protection'),
                shape: const RoundedRectangleBorder(borderRadius: borderRadius),
                title: Text(context.l10n.dataProtection, style: Theme.of(context).textTheme.labelLarge),
              ),
              ListTile(
                onTap: () => context
                  ..pop()
                  ..push('/imprint'),
                shape: const RoundedRectangleBorder(borderRadius: borderRadius),
                title: Text(context.l10n.imprint, style: Theme.of(context).textTheme.labelLarge),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: FutureBuilder(
                    builder: (ctx, snap) => Text(
                      'App-Version\n${snap.hasData ? snap.data : '...'}',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Theme.of(context).colorScheme.outline),
                    ),
                    future: PackageInfo.fromPlatform().then((info) => info.version),
                  ),
                  onTap: () => _AppDrawerEasterEgg.tap(context),
                ),
              ),
              Expanded(
                child: Text(
                  'Runtime-Version\n${GetIt.I.get<EnmeshedRuntime>().runtimeVersion}',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Theme.of(context).colorScheme.outline),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _AppDrawerEasterEgg {
  static int taps = 0;
  static DateTime? lastTap;

  static void tap(BuildContext context) {
    if (lastTap == null || DateTime.now().difference(lastTap!) <= const Duration(seconds: 1)) {
      taps++;
    } else {
      taps = 0;
    }

    if (taps >= 10) {
      context
        ..pop()
        ..push('/debug');

      taps = 0;
      lastTap = null;

      return;
    }

    lastTap = DateTime.now();
  }
}