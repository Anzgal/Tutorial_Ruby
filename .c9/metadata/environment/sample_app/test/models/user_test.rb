{"filter":false,"title":"user_test.rb","tooltip":"/sample_app/test/models/user_test.rb","undoManager":{"mark":17,"position":17,"stack":[[{"start":{"row":30,"column":0},"end":{"row":30,"column":3},"action":"remove","lines":["end"],"id":9},{"start":{"row":30,"column":0},"end":{"row":38,"column":3},"action":"insert","lines":["test \"email validation should accept valid addresses\" do","    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org","                         first.last@foo.jp alice+bob@baz.cn]","    valid_addresses.each do |valid_address|","      @user.email = valid_address","      assert @user.valid?, \"#{valid_address.inspect} should be valid\"","    end","  end","end"]}],[{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"insert","lines":["  "],"id":10}],[{"start":{"row":38,"column":0},"end":{"row":38,"column":3},"action":"remove","lines":["end"],"id":12},{"start":{"row":38,"column":0},"end":{"row":46,"column":3},"action":"insert","lines":["test \"email validation should reject invalid addresses\" do","    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.","                           foo@bar_baz.com foo@bar+baz.com]","    invalid_addresses.each do |invalid_address|","      @user.email = invalid_address","      assert_not @user.valid?, \"#{invalid_address.inspect} should be invalid\"","    end","  end","end"]}],[{"start":{"row":38,"column":0},"end":{"row":38,"column":2},"action":"insert","lines":["  "],"id":13}],[{"start":{"row":29,"column":5},"end":{"row":30,"column":0},"action":"insert","lines":["",""],"id":14},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":38,"column":5},"end":{"row":39,"column":0},"action":"insert","lines":["",""],"id":15},{"start":{"row":39,"column":0},"end":{"row":39,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":47,"column":5},"end":{"row":48,"column":0},"action":"insert","lines":["",""],"id":16},{"start":{"row":48,"column":0},"end":{"row":48,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":49,"column":0},"end":{"row":49,"column":3},"action":"remove","lines":["end"],"id":17},{"start":{"row":49,"column":0},"end":{"row":54,"column":3},"action":"insert","lines":["test \"email addresses should be unique\" do","    duplicate_user = @user.dup","    @user.save","    assert_not duplicate_user.valid?","  end","end"]}],[{"start":{"row":49,"column":0},"end":{"row":49,"column":2},"action":"insert","lines":["  "],"id":18}],[{"start":{"row":49,"column":2},"end":{"row":54,"column":3},"action":"remove","lines":["test \"email addresses should be unique\" do","    duplicate_user = @user.dup","    @user.save","    assert_not duplicate_user.valid?","  end","end"],"id":20},{"start":{"row":49,"column":2},"end":{"row":55,"column":3},"action":"insert","lines":["test \"email addresses should be unique\" do","    duplicate_user = @user.dup","    duplicate_user.email = @user.email.upcase","    @user.save","    assert_not duplicate_user.valid?","  end","end"]}],[{"start":{"row":4,"column":2},"end":{"row":6,"column":5},"action":"remove","lines":["def setup","    @user = User.new(name: \"Example User\", email: \"user@example.com\")","  end"],"id":21},{"start":{"row":4,"column":2},"end":{"row":7,"column":5},"action":"insert","lines":["def setup","    @user = User.new(name: \"Example User\", email: \"user@example.com\",","                     password: \"foobar\", password_confirmation: \"foobar\")","  end"]}],[{"start":{"row":56,"column":0},"end":{"row":57,"column":0},"action":"insert","lines":["",""],"id":22}],[{"start":{"row":57,"column":0},"end":{"row":57,"column":3},"action":"remove","lines":["end"],"id":23},{"start":{"row":57,"column":0},"end":{"row":66,"column":3},"action":"insert","lines":["test \"password should be present (nonblank)\" do","    @user.password = @user.password_confirmation = \" \" * 6","    assert_not @user.valid?","  end","","  test \"password should have a minimum length\" do","    @user.password = @user.password_confirmation = \"a\" * 5","    assert_not @user.valid?","  end","end"]}],[{"start":{"row":57,"column":0},"end":{"row":57,"column":2},"action":"insert","lines":["  "],"id":24}],[{"start":{"row":65,"column":5},"end":{"row":66,"column":0},"action":"insert","lines":["",""],"id":25},{"start":{"row":66,"column":0},"end":{"row":66,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":66,"column":2},"end":{"row":67,"column":0},"action":"insert","lines":["",""],"id":26},{"start":{"row":67,"column":0},"end":{"row":67,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":67,"column":2},"end":{"row":69,"column":5},"action":"insert","lines":["test \"authenticated? should return false for a user with nil digest\" do","    assert_not @user.authenticated?('')","  end"],"id":27}],[{"start":{"row":67,"column":2},"end":{"row":69,"column":5},"action":"remove","lines":["test \"authenticated? should return false for a user with nil digest\" do","    assert_not @user.authenticated?('')","  end"],"id":28},{"start":{"row":67,"column":2},"end":{"row":69,"column":5},"action":"insert","lines":["test \"authenticated? should return false for a user with nil digest\" do","    assert_not @user.authenticated?(:remember, '')","  end"]}]]},"ace":{"folds":[],"scrolltop":946.5,"scrollleft":0,"selection":{"start":{"row":69,"column":5},"end":{"row":69,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":58,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1540779623509,"hash":"3a38860ae1a644c111f5476059d21c82750ea8e8"}