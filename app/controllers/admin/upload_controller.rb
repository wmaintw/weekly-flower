# encoding: utf-8

class Admin::UploadController < ApplicationController
  layout "admin/admin"

  before_filter :auth_required

  def index
    pic = Pic.new
    @pics = pic.all_pics
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new()

    if !valid_file
      flash[:message] = "Failed to upload file, please choose file."
      redirect_to "/admin/upload/new"
      return
    end

    filename = generate_filename
    @pic.filename = filename

    save_file('image/flower', filename)

    if @pic.save
      flash[:message] = "Pic added successfully."
    else
      flash[:message] = "Failed to add flower."
    end

    redirect_to "/admin/upload/new"
  end

  def valid_file
    params[:file] != nil
  end

  def save_file(path, filename)
    uploaded_io = params[:file]
    File.open(Rails.root.join('public', path, filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
  end

  def generate_filename
      uploaded_io = params[:file]
      Time.new.strftime "%Y-%m-%d-%H-%M-%S-%L-" + uploaded_io.original_filename
  end
end
