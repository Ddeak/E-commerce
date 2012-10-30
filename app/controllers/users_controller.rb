class UsersController < ApplicationController
  def search
  end
  def index
  	@users = User.all
  end
end
