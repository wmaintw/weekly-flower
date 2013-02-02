class Admin::FlowersController < ApplicationController
  layout "admin/admin"

  before_filter :auth_required

  def index
    flower = Flower.new
    @flowers = flower.all_flowers
  end

  def new
    @flower = Flower.new
  end

  def edit
    @flower = Flower.find(params[:id])
  end

  def create
    @flower = Flower.new(params[:flower])

    if @flower.save!
      flash[:message] = "Flower added successfully."
    else
      flash[:message] = "Failed to add flower."
    end

    redirect_to "/admin/flowers/new"
  end

  def update
    @flower = Flower.find(params[:id])

    if @flower.update_attributes(params[:flower])
      flash[:message] = "Flower added successfully."
    else
      flash[:message] = "Failed to add flower."
    end

    redirect_to "/admin/flowers/#{@flower.id}/edit"
  end
end
