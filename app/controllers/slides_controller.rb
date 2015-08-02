class SlidesController < ApplicationController
  def index
    #@paginatable_array = Kaminari.paginate_array(Slide.all).page(params[:page])
    @paginatable_array = Slide.all.paginate(:page => params[:page], :per_page => 1)
    render json:  @paginatable_array, include: ['sub'], pagination: true
  end

  def show
    render json: Slide.first, include: ['sub'], pagination: true
  end
end
