class Admin::HomeController < ApplicationController
  layout "admin/admin"

  before_filter :auth_required

  def index

  end
end
