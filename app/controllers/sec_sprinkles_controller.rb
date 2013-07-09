class SecSprinklesController < ApplicationController
  def create
    @second = Second.find_by_id(params[:second_id])
    @sec_sprinkle = SecSprinkle.create(params[:sec_sprinkle])
    if @sec_sprinkle.save
      redirect_to second_path(@second), flash: { success: "Sprinkle saved" }
    else
      redirect_to second_path(@second), error: { error: "Unable to add sprinkle" }
    end
  end
end
