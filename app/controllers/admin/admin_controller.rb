require 'digest/sha2'

class Admin::AdminController < ApplicationController
  layout "admin/admin"

  before_filter :auth_required, :only => [:home]

  def login

  end

  def do_login
    digest = Digest::SHA2.new
    digest.update(params["password"])
    password = digest.hexdigest

    username = params["username"]

    user = Admin.find_by_username_and_password(username, password)

    if user != nil
      session["admin"] = "admin"
      redirect_to :action => "home"
    else
      flash[:info] = "Login failed, please try again."
      redirect_to :action => "login"
    end
  end

  def logout
    session["admin"] = nil

    flash[:info] = "you have logged out."
    redirect_to "/admin/login"
  end

  def home

  end
end
