class GiftsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def buy
    @gift = Gift.find(params[:id])
  end

  def purchase
    Purchase.create(gift_id: params[:id], quotas: params[:quantity], buyer: params[:buyer], message: params[:message])
    gift = Gift.find(params[:id])
    gift.remaining_quota -= params[:quantity].to_i
    gift.save
    redirect_to action:'index'
  end
end
