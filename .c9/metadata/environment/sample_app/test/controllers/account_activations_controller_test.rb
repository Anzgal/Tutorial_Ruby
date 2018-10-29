{"filter":false,"title":"account_activations_controller_test.rb","tooltip":"/sample_app/test/controllers/account_activations_controller_test.rb","undoManager":{"mark":-1,"position":-1,"stack":[[{"start":{"row":0,"column":0},"end":{"row":7,"column":0},"action":"remove","lines":["require 'test_helper'","","class AccountActivationsControllerTest < ActionDispatch::IntegrationTest","  # test \"the truth\" do","  #   assert true","  # end","end",""],"id":2},{"start":{"row":0,"column":0},"end":{"row":14,"column":3},"action":"insert","lines":["class AccountActivationsController < ApplicationController","","  def edit","    user = User.find_by(email: params[:email])","    if user && !user.activated? && user.authenticated?(:activation, params[:id])","      user.activate","      log_in user","      flash[:success] = \"Account activated!\"","      redirect_to user","    else","      flash[:danger] = \"Invalid activation link\"","      redirect_to root_url","    end","  end","end"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":6,"column":3},"end":{"row":6,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1540779942570,"hash":"5886a35d95f2cff7bdec5e91c283be843bc79e3e"}