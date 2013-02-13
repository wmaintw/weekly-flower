class Admin::SettingsController < ApplicationController
  layout "admin/admin"

  before_filter :auth_required

  def index
    @settings = Setting.all
  end

  def edit
      @setting = Setting.find(params[:id])
  end

  def update
    @setting = Setting.find(params[:id])

    if @setting.update_attributes(params[:setting])
      flash[:message] = "Setting updated successfully."
    else
      flash[:message] = "Failed to update setting."
    end

    redirect_to "/admin/settings/#{@setting.id}/edit"
  end
end
