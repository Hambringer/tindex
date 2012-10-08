class TutorialsController < ApplicationController

  #layout "admin"

  def list
    @tutorial = Tutorial.order("tutorials.create_date ASC")
  end

  def show
    @tutorial = Tutorial.find(params[:id])
  end

  def index
      list
      render("list")
    end

def new
      @tutorial = Tutorial.new
end

def create
    @tutorial = Tutorial.new(params[:tutorial])
    if @tutorial.save
      flash[:notice] = "section created"
      redirect_to(:action=>"list")
    else
      render("new")
    end
end


end
