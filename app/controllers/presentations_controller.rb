class PresentationsController < ApplicationController
  before_action :find_presentation, only: :show

  def index
    @presentations = Presentation.all
    render json: @presentations, include: "slides", adapter: adapter
  end

  def show
    render json: @presentation, include: "slides", adapter: adapter
  end

  private

  def find_presentation
    @presentation = Presentation.find params[:id]
  end
end
