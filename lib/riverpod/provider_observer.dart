import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver{
  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    // ProviderBase 어떤 프로바이터가 업데이트가 됐는지
    print('[Provider Updated] provider: $provider / pv: $previousValue / nv: $newValue');
  }

  @override
  void didAddProvider(ProviderBase provider, Object? value, ProviderContainer container) {
    // TODO: implement didAddProvider
    print('[Provider Added] provider: $provider / value: $value');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer containers) {
    // TODO: implement didDisposeProvider
    print('[Provider Disposed] provider: $provider');
  }
}