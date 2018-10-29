{"filter":false,"title":"users_controller_test.rb","tooltip":"/sample_app/test/controllers/users_controller_test.rb","undoManager":{"mark":9,"position":9,"stack":[[{"start":{"row":4,"column":2},"end":{"row":6,"column":5},"action":"remove","lines":["def setup","    @user = users(:michael)","  end"],"id":15},{"start":{"row":4,"column":2},"end":{"row":7,"column":5},"action":"insert","lines":["def setup","    @user       = users(:michael)","    @other_user = users(:archer)","  end"]}],[{"start":{"row":25,"column":5},"end":{"row":26,"column":0},"action":"insert","lines":["",""],"id":16},{"start":{"row":26,"column":0},"end":{"row":26,"column":2},"action":"insert","lines":["  "]},{"start":{"row":26,"column":2},"end":{"row":27,"column":0},"action":"insert","lines":["",""]},{"start":{"row":27,"column":0},"end":{"row":27,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":27,"column":2},"end":{"row":41,"column":3},"action":"insert","lines":["test \"should redirect edit when logged in as wrong user\" do","    log_in_as(@other_user)","    get edit_user_path(@user)","    assert flash.empty?","    assert_redirected_to root_url","  end","","  test \"should redirect update when logged in as wrong user\" do","    log_in_as(@other_user)","    patch user_path(@user), params: { user: { name: @user.name,","                                              email: @user.email } }","    assert flash.empty?","    assert_redirected_to root_url","  end","end"],"id":17}],[{"start":{"row":41,"column":0},"end":{"row":42,"column":2},"action":"remove","lines":["end","  "],"id":18}],[{"start":{"row":40,"column":5},"end":{"row":41,"column":0},"action":"insert","lines":["",""],"id":19},{"start":{"row":41,"column":0},"end":{"row":41,"column":2},"action":"insert","lines":["  "]},{"start":{"row":41,"column":2},"end":{"row":42,"column":0},"action":"insert","lines":["",""]},{"start":{"row":42,"column":0},"end":{"row":42,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":42,"column":2},"end":{"row":45,"column":5},"action":"insert","lines":["test \"should redirect index when not logged in\" do","    get users_path","    assert_redirected_to login_url","  end"],"id":20}],[{"start":{"row":0,"column":0},"end":{"row":7,"column":5},"action":"remove","lines":["require 'test_helper'","","class UsersControllerTest < ActionDispatch::IntegrationTest","","  def setup","    @user       = users(:michael)","    @other_user = users(:archer)","  end"],"id":21},{"start":{"row":0,"column":0},"end":{"row":7,"column":5},"action":"insert","lines":["require 'test_helper'","","class UsersControllerTest < ActionDispatch::IntegrationTest","","  def setup","    @user       = users(:michael)","    @other_user = users(:archer)","  end"]}],[{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"insert","lines":["  "],"id":22}],[{"start":{"row":47,"column":2},"end":{"row":47,"column":5},"action":"remove","lines":["end"],"id":23}],[{"start":{"row":47,"column":2},"end":{"row":61,"column":3},"action":"insert","lines":["test \"should redirect destroy when not logged in\" do","    assert_no_difference 'User.count' do","      delete user_path(@user)","    end","    assert_redirected_to login_url","  end","","  test \"should redirect destroy when logged in as a non-admin\" do","    log_in_as(@other_user)","    assert_no_difference 'User.count' do","      delete user_path(@user)","    end","    assert_redirected_to root_url","  end","end"],"id":24}]]},"ace":{"folds":[],"scrolltop":629,"scrollleft":0,"selection":{"start":{"row":61,"column":3},"end":{"row":61,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1540778057721,"hash":"f0321e359dd81202fe31b1c8954fbcebe4957364"}