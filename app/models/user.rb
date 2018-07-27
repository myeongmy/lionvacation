class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :foods
  has_many :fcomments
  has_many :things
  has_many :locations
    def admin?(food)
      self==food.user
    end
    def admin?(location)
      self==location.user
    end
    def admin?(thing)
      self==thing.user
    end    
end
