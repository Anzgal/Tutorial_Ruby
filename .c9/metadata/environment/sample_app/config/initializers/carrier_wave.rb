{"filter":false,"title":"carrier_wave.rb","tooltip":"/sample_app/config/initializers/carrier_wave.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":10,"column":3},"action":"remove","lines":["if Rails.env.production?","  CarrierWave.configure do |config|","    config.fog_credentials = {","      # Configuration for Amazon S3","      :provider              => 'AWS',","      :aws_access_key_id     => ENV['S3_ACCESS_KEY'],","      :aws_secret_access_key => ENV['S3_SECRET_KEY']","    }","    config.fog_directory     =  ENV['S3_BUCKET']","  end","end"],"id":2},{"start":{"row":0,"column":0},"end":{"row":10,"column":3},"action":"insert","lines":["if Rails.env.production?","  CarrierWave.configure do |config|","    config.fog_credentials = {","      # Configuration for Amazon S3","      :provider              => 'AWS',","      :aws_access_key_id     => ENV['S3_ACCESS_KEY'],","      :aws_secret_access_key => ENV['S3_SECRET_KEY']","    }","    config.fog_directory     =  ENV['S3_BUCKET']","  end","end"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":10,"column":3},"end":{"row":10,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1540796506934,"hash":"1ca26b88e1ae362b604e2165489038cf5d807b28"}