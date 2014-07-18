class CarriersController < ApplicationController
	def new
		 @carrier =Carrier.new
	end
	
	def create
    	@carrier = Carrier.new(carrier_params)

    	respond_to do |format|
      		if @carrier.save
      			  CarrierMailer.carrier_email(@carrier).deliver
         
         
        		format.html { redirect_to new_carrier_path, notice: 'resume was successfully uploaded.' }
        		format.json { render :show, status: :created, location: @carrier }
      		else
        		format.html { render :new }
        		format.json { render json: @carrier.errors, status: :unprocessable_entity }
      		end
    	end
  	end
  
end
private
    def carrier_params
      params.require(:carrier).permit(:first_name, :last_name, :city, :country, :email_address, :phone_number, :resume, :photo)
  
	end

