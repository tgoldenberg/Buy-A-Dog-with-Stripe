class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @users = User.all
    @puppies = Puppy.all
    @charge = Charge.new
  end

  def pups
    @user = current_user
    if @user
      @puppies = Puppy.where(user_id: @user.id)
    end
  end
end
