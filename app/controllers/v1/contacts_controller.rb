class V1::ContactsController < ApplicationController

    def index
      @contacts = Contact.all
      render json: @contacts, status: :ok
    end

    def create 
       @contact = Contact.new(contact_params)
    end


    private 

    def contact_params
        params.require(:contact).permit(:first_name, :last_name, :email)
    end

  end

  