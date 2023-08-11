import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

// 1) 어떤 Provider를 사용할지 결정할 고민 할 필요 없도록
// Provider, FutureProvider, StreamProvider 쓸지
// StateNotifierProvider

final _testProvider = Provider<String>((ref) => 'Hello Code Generation');

@riverpod
String gState(GStateRef ref){
  return 'Hello Code Generation';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref)async{
  await Future.delayed(Duration(seconds: 3));
  return 10;
}


// 대문자는 괄호 해주어야 됨
@Riverpod(
  //살려둬라
  keepAlive: true,
)
Future<int> gStateFuture2(GStateFuture2Ref ref)async{
  await Future.delayed(Duration(seconds: 3));
  return 10;
}


// 2) Parameter > Family 파라미터를 일반 함수처럼 사용할 수 있도록
// class Parameter {
//   final int number1;
//   final int number2;
//
//   parameter({
//     required this.number1,
//     required this.number2,
//   });
// }
//
// final _testFamilyProvider = Provider.family<int, Parameter>(
//     (ref, Parameter) => Parameter.number1 * Parameter.number2,
// );

@riverpod
int gStateMultiply(
  GStateMultiplyRef ref, {
  required int number1,
  required int number2,
}) {
  return number1 * number2;
}

@riverpod
//Gstate는 안해도 되는거 알지?
class GStateNotifier extends _$GStateNotifier{

  @override
  int build(){
    return 0;
  }

  increment(){
    state ++;
  }

  decrement(){
    state --;
  }
}