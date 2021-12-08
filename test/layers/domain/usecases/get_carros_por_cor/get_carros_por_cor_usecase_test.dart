import 'package:arq/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arq/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()),
    );

    var result = useCase('azul');
    late CarroEntity resultExpect;

    result.fold(
      (l) => null,
      (r) => resultExpect = r,
    );
    expect(resultExpect, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de quatro portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()),
    );

    var result = useCase('vermelho');
    late CarroEntity resultExpect;

    result.fold(
      (l) => null,
      (r) => resultExpect = r,
    );
    expect(resultExpect.qtdPortas, 4);
  });

  test('Deve retornar um carro de duas portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()),
    );

    var result = useCase('verde');
    late CarroEntity resultExpect;

    result.fold(
      (l) => null,
      (r) => resultExpect = r,
    );

    expect(resultExpect.qtdPortas, 2);
  });
}
