class CategoriasController < InheritedResources::Base
  def build_resource_params
        [params.fetch(:categoria, {}).permit(:descricao,:setor_id)]
  end
end
