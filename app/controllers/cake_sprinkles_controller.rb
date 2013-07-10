class CakeSprinklesController < ApplicationController
  def create
    @cake = Cake.find_by_id(params[:cake][:cake_id])
    @cake_sprinkle = @cake.cake_sprinkles.create(params[:cake_sprinkle])
    if @cake_sprinkle.save
      redirect_to cake_path(@cake), flash: { notice: "Sprinkle saved" }
    else
      redirect_to cake_path(@cake), error: { error: "Unable to add sprinkle" }
    end
  end
end
