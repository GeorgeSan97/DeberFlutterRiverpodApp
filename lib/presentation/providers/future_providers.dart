import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'future_providers.g.dart';


@Riverpod(keepAlive: true)
Future<String> pokemonName (PokemonNameRef ref) async{

  final pokemonName = await PokemonInformation.getPokemonName(2);

  ref.onDispose(() {
      print('Estamos a punto de eliminar este provider');
    });

  return pokemonName;
}