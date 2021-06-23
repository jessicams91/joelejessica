class PurchasesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @purchases = Purchase.all
  end

  def checked
    purchase = Purchase.find params[:id]
    purchase.status = "OK"
    purchase.save
    redirect_to action:'index'
  end

  def canceled
    purchase = Purchase.find params[:id]
    purchase.gift.remaining_quota += purchase.quotas
    purchase.gift.save
    purchase.destroy
    redirect_to action:'index'
  end
end
