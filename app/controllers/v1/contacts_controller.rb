class V1::ContactsController < ApplicationController

    def index
      @contacts = Contact.all
      render json: @contacts, status: :ok
    end

    def create 
       @contact = Contact.new(contact_params)

       @contact.save 
       render json: @contacts, status: :created
    end

    def destroy
      @contact = Contact.find(params[:id])
    
      if @contact.destroy
        head :no_content
      else
        render json: { error: 'Failed to destroy contact' }, status: :unprocessable_entity
      end
    end
    

    private 

    def contact_params
        params.require(:contact).permit(:first_name, :last_name, :email)
    end

  end

  