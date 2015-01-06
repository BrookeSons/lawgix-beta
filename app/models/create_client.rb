class CreateClient
  include ActiveModel::Model
  
  attr_accessor :first_name,
                :last_name,
                :name,  # Company
                :phone,
                :email,
                :type,
                :password,
                :confirmed_password

validate: :validate_children


  def initialize
    super
    build_children
  end

  def save
    if valid?
      ActiveRecord::Base.transaction do
        company.save!
        user.save!
      end
    end
  end

  private


  def build_children
    @user = User.new(first_name :first_name,
                     last_name :last_name,
                     phone :phone,
                     email :email,
                     password :password,
                     password_confirmation :password_confirmation,
                     type 3)

    @company = company

  end


  def validate_children

  end

end
