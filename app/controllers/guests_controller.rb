class GuestsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @crepe = Guest.where(crepe: true).sum(:guests)
    @friday = Guest.where(friday: true).sum(:guests)
    @sunday = Guest.where(sunday: true).sum(:guests)
    @guests = Guest.where("guests is not NULL").sum(:guests)
  end

  def search
    @guest = Guest.all.select{|g| g.name.delete(' ') == params[:name]}.first
    render partial: "search"
  end

  def update
    @guest = Guest.find params[:id]
    @guest.guests = params[:guests]
    @guest.observation = params[:observation]
    @guest.vaccine = params[:vaccine]
    @guest.hair_makeup = params[:hair_makeup]
    @guest.full_names = params[:full_names]
    params[:sunday] ? (@guest.sunday = true) : (@guest.sunday = false)
    params[:friday] ? (@guest.friday = true) : (@guest.friday = false)
    params[:crepe] ? (@guest.crepe = true) : (@guest.crepe = false)
    @guest.save
    flash[:success] = 'Obrigado por confirmar sua presença!'
    redirect_to root_path
  end
end
