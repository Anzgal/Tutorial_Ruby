{"filter":false,"title":"password_resets_test.rb","tooltip":"/sample_app/test/integration/password_resets_test.rb","undoManager":{"mark":2,"position":2,"stack":[[{"start":{"row":0,"column":0},"end":{"row":61,"column":3},"action":"remove","lines":["require 'test_helper'","","class PasswordResetsTest < ActionDispatch::IntegrationTest","","  def setup","    ActionMailer::Base.deliveries.clear","    @user = users(:michael)","  end","","  test \"password resets\" do","    get new_password_reset_path","    assert_template 'password_resets/new'","    # Invalid email","    post password_resets_path, params: { password_reset: { email: \"\" } }","    assert_not flash.empty?","    assert_template 'password_resets/new'","    # Valid email","    post password_resets_path,","         params: { password_reset: { email: @user.email } }","    assert_not_equal @user.reset_digest, @user.reload.reset_digest","    assert_equal 1, ActionMailer::Base.deliveries.size","    assert_not flash.empty?","    assert_redirected_to root_url","    # Password reset form","    user = assigns(:user)","    # Wrong email","    get edit_password_reset_path(user.reset_token, email: \"\")","    assert_redirected_to root_url","    # Inactive user","    user.toggle!(:activated)","    get edit_password_reset_path(user.reset_token, email: user.email)","    assert_redirected_to root_url","    user.toggle!(:activated)","    # Right email, wrong token","    get edit_password_reset_path('wrong token', email: user.email)","    assert_redirected_to root_url","    # Right email, right token","    get edit_password_reset_path(user.reset_token, email: user.email)","    assert_template 'password_resets/edit'","    assert_select \"input[name=email][type=hidden][value=?]\", user.email","    # Invalid password & confirmation","    patch password_reset_path(user.reset_token),","          params: { email: user.email,","                    user: { password:              \"foobaz\",","                            password_confirmation: \"barquux\" } }","    assert_select 'div#error_explanation'","    # Empty password","    patch password_reset_path(user.reset_token),","          params: { email: user.email,","                    user: { password:              \"\",","                            password_confirmation: \"\" } }","    assert_select 'div#error_explanation'","    # Valid password & confirmation","    patch password_reset_path(user.reset_token),","          params: { email: user.email,","                    user: { password:              \"foobaz\",","                            password_confirmation: \"foobaz\" } }","    assert is_logged_in?","    assert_not flash.empty?","    assert_redirected_to user","  end","end"],"id":2},{"start":{"row":0,"column":0},"end":{"row":61,"column":3},"action":"insert","lines":["require 'test_helper'","","class PasswordResetsTest < ActionDispatch::IntegrationTest","","  def setup","    ActionMailer::Base.deliveries.clear","    @user = users(:michael)","  end","","  test \"password resets\" do","    get new_password_reset_path","    assert_template 'password_resets/new'","    # Invalid email","    post password_resets_path, params: { password_reset: { email: \"\" } }","    assert_not flash.empty?","    assert_template 'password_resets/new'","    # Valid email","    post password_resets_path,","         params: { password_reset: { email: @user.email } }","    assert_not_equal @user.reset_digest, @user.reload.reset_digest","    assert_equal 1, ActionMailer::Base.deliveries.size","    assert_not flash.empty?","    assert_redirected_to root_url","    # Password reset form","    user = assigns(:user)","    # Wrong email","    get edit_password_reset_path(user.reset_token, email: \"\")","    assert_redirected_to root_url","    # Inactive user","    user.toggle!(:activated)","    get edit_password_reset_path(user.reset_token, email: user.email)","    assert_redirected_to root_url","    user.toggle!(:activated)","    # Right email, wrong token","    get edit_password_reset_path('wrong token', email: user.email)","    assert_redirected_to root_url","    # Right email, right token","    get edit_password_reset_path(user.reset_token, email: user.email)","    assert_template 'password_resets/edit'","    assert_select \"input[name=email][type=hidden][value=?]\", user.email","    # Invalid password & confirmation","    patch password_reset_path(user.reset_token),","          params: { email: user.email,","                    user: { password:              \"foobaz\",","                            password_confirmation: \"barquux\" } }","    assert_select 'div#error_explanation'","    # Empty password","    patch password_reset_path(user.reset_token),","          params: { email: user.email,","                    user: { password:              \"\",","                            password_confirmation: \"\" } }","    assert_select 'div#error_explanation'","    # Valid password & confirmation","    patch password_reset_path(user.reset_token),","          params: { email: user.email,","                    user: { password:              \"foobaz\",","                            password_confirmation: \"foobaz\" } }","    assert is_logged_in?","    assert_not flash.empty?","    assert_redirected_to user","  end","end"]}],[{"start":{"row":61,"column":0},"end":{"row":61,"column":3},"action":"remove","lines":["end"],"id":4},{"start":{"row":61,"column":0},"end":{"row":76,"column":3},"action":"insert","lines":["test \"expired token\" do","    get new_password_reset_path","    post password_resets_path,","         params: { password_reset: { email: @user.email } }","","    @user = assigns(:user)","    @user.update_attribute(:reset_sent_at, 3.hours.ago)","    patch password_reset_path(@user.reset_token),","          params: { email: @user.email,","                    user: { password:              \"foobar\",","                            password_confirmation: \"foobar\" } }","    assert_response :redirect","    follow_redirect!","    assert_match /FILL_IN/i, response.body","  end","end"]}],[{"start":{"row":61,"column":0},"end":{"row":61,"column":2},"action":"insert","lines":["  "],"id":5}]]},"ace":{"folds":[],"scrolltop":789.5,"scrollleft":0,"selection":{"start":{"row":73,"column":17},"end":{"row":73,"column":17},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":49,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1540791010884,"hash":"ff3f71569aeccef89531f1ad66cf39cfa4f9768f"}