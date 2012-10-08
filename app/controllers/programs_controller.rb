class ProgramsController < ApplicationController

  def list
    @program = Program.order("programs.name ASC")
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(params[:program])
    if @program.save
      flash[:notice] = "new program created"
      redirect_to(:action=>"list")
    else
      render("new")
    end

  end

end
