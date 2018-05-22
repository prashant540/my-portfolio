class PortfoliosController < ApplicationController

	def index
		@portfolios = Portfolio.all
	end

	def react
		@portfolios = Portfolio.react_items
	end

	def ruby_on_rails
		@portfolios = Portfolio.ruby_on_rails_items
	end

	def new
		@portfolio_item = Portfolio.new
	end

	def show
		@portfolio_item = Portfolio.find(params[:id])
	end

	def destroy
		@portfolio_item = Portfolio.find(params[:id])
		@portfolio_item.destroy	
		respond_to do |format|
    	format.html { redirect_to portfolios_url, notice: 'Portfolio item was deleted successfully' }
    end
	end


	def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle,:body,:thumb_image,:main_image))
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  	@portfolio_item = Portfolio.find_by_id(params[:id])
  end

  def update
  	@portfolio_item = Portfolio.find_by_id(params[:id])
  	respond_to do |format|
	  	if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body, :thumb_image, :main_image))
	      format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully updated.' }
	    else
	      format.html { render :new }
	    end
	  end
  end

end
