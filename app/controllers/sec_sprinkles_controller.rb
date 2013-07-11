class SecSprinklesController < ApplicationController
  def create
    @second = Second.find_by_id(params[:second][:second_id])
    @sec_sprinkle = @second.sec_sprinkles.create(params[:sec_sprinkle])
    if @sec_sprinkle.save
      redirect_to second_path(@second), flash: { notice: "Sprinkle saved" } unless params[:second][:index]
      redirect_to root_path, flash: { notice: "Sprinkle saved" }
    else
      redirect_to second_path(@second), error: { error: "Unable to add sprinkle" }
    end
  end
end
