class AuthorsController < ApplicationController

  def list
    @author = Author.order("authors.name ASC")
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(params[:author])
    if @author.save
      flash[:notice] = "new author created"
      redirect_to(:action=>"list")
    else
      render("new")
    end
  end

end
