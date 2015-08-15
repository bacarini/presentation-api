class SlidesController < ApplicationController
  before_action :find_slide, only: :show

  def index
    @slides = Slide.all
    render json: @slides, include: "presentation", adapter: adapter
  end

  def show
    render json: @slide, include: "presentation", adapter: adapter
  end

  private

  def find_slide
    @slide = Slide.find params[:id]
  end
end
