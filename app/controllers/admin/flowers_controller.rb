class Admin::FlowersController < ApplicationController
  layout "admin/admin"

  before_filter :auth_required

  def index
    flower = Flower.new
    @flowers = flower.all_flowers
  end
end
