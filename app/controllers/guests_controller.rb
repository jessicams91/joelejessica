class GuestsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def search
    @guest = Guest.all.select{|g| g.name.delete(' ') == params[:name]}.first
    render partial: "search"
  end

  def update
    @guest = Guest.find params[:id]
    @guest.guests = params[:guests]
    @guest.observation = params[:observation]
    @guest.hair_makeup = params[:hair_makeup]
    @guest.full_names = params[:full_names]
    @guest.sunday = true if params[:sunday]
    @guest.friday = true if params[:friday]
    @guest.crepe = true if params[:crepe]
    @guest.save
    flash[:success] = 'Obrigado por confirmar sua presença!'
    redirect_to root_path
  end
end
