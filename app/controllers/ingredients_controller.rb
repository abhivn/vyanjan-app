class IngredientsController < InheritedResources::Base
  before_action :authenticate_user!
  load_and_authorize_resource
  
  private

    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
end
