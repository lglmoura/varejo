class SupermercadosController < InheritedResources::Base
   def build_resource_params
        [params.fetch(:supermercado, {}).permit(:nome,:endereco,:complemento,
                      :bairro, :cidade, :estado, :cep, :latitude, :longitude)]
    end
end
