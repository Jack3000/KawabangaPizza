class PizzaPicsController < ApplicationController
  def destroy
    @pizza_pic = PizzaPic.find(params[:id])
    @pizza_pic.destroy
    render nothing: true
  end
end