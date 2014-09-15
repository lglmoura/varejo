class FabricantesController < InheritedResources::Base
  def build_resource_params
        [params.fetch(:fabricante, {}).permit(:nome)]
  end
end
