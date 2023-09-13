class User < ApplicationRecord
  include Mongoid::Document
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   acts_as_token_authenticatable
   field :authentication_token
end
