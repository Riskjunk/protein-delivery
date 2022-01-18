class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    @review = Review.new
    @reviews = @service.reviews.includes(:user).order(created_at: :desc)
  end

  def service_rank
    @service_like_ranks = Service.find(Review.group(:service_id) #名前ミス
                          .order('sum(rate)/count(rate) desc').limit(3).pluck(:service_id))
  end
end
