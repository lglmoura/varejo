class SetorsController < InheritedResources::Base
  def build_resource_params
        [params.fetch(:setor, {}).permit(:nome)]
    end
end
