class Admin::AdminController < ApplicationController
  


  protected

  def check_admin
    redirect_to root_path, alert: "У Вас нет прав доступа к данной странице" unless current_user.admin?
  end
end
