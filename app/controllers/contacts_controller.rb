class ContactsController < ApplicationController
	def index
	end
	def new
	
	 @contact =Contact.new
  end
  def show
    
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
         ContactMailer.contact_email(@contact).deliver
         
        format.html { redirect_to new_contact_path, notice: 'contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
private
    def contact_params
      params.require(:contact).permit(:name, :email,:address, :comments)
  
	end
