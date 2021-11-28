import 'package:arq/layers/data/dtos/carro_dto.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository{
  @override
  CarroEntity call(String cor) {
    // chamamos a api e ela respondeu um json;
    var json = {
      'placa': 'ABC123',
      'quantidadeDePortas': 4,
      'valorFinal': 29.0000,
    };

    return CarroDto.fromMap(json);
  }

}