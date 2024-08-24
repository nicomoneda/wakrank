class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_total_chest

  def set_total_chest
    if user_signed_in?
      @total_chest = 0
      @total_chest = current_user.total_chest_user
    end
  end
end
