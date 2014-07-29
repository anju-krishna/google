
class PortfoliosController < ApplicationController
	def index
	end
	def new
	 	@portfolio =Portfolio.new
  	end
  	def show
    
  	end

  	def create
    	@portfolio = Portfolio.new(portfolio_params)

    	respond_to do |format|
      		if @portfolio.save         
        		format.html { redirect_to new_portfolio_path, notice: 'portfolio was successfully created.' }
        		format.json { render :show, status: :created, location: @portfolio }
      		else
        		format.html { render :new }
        		format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      		end
    	end
  	end
	
end
private
    def portfolio_params
    	params.require(:portfolio).permit(:name, :description,:image)
  
end


