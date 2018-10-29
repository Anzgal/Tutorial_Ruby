{"filter":false,"title":"picture_uploader.rb","tooltip":"/sample_app/app/uploaders/picture_uploader.rb","undoManager":{"mark":1,"position":1,"stack":[[{"start":{"row":0,"column":0},"end":{"row":13,"column":3},"action":"remove","lines":["class PictureUploader < CarrierWave::Uploader::Base","  storage :file","","  # Override the directory where uploaded files will be stored.","  # This is a sensible default for uploaders that are meant to be mounted:","  def store_dir","    \"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}\"","  end","","  # Add a white list of extensions which are allowed to be uploaded.","  def extension_whitelist","    %w(jpg jpeg gif png)","  end","end"],"id":3},{"start":{"row":0,"column":0},"end":{"row":17,"column":0},"action":"insert","lines":["class PictureUploader < CarrierWave::Uploader::Base","  include CarrierWave::MiniMagick","  process resize_to_limit: [400, 400]","","  storage :file","","  # Override the directory where uploaded files will be stored.","  # This is a sensible default for uploaders that are meant to be mounted:","  def store_dir","    \"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}\"","  end","","  # Add a white list of extensions which are allowed to be uploaded.","  def extension_whitelist","    %w(jpg jpeg gif png)","  end","end",""]}],[{"start":{"row":0,"column":0},"end":{"row":17,"column":0},"action":"remove","lines":["class PictureUploader < CarrierWave::Uploader::Base","  include CarrierWave::MiniMagick","  process resize_to_limit: [400, 400]","","  storage :file","","  # Override the directory where uploaded files will be stored.","  # This is a sensible default for uploaders that are meant to be mounted:","  def store_dir","    \"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}\"","  end","","  # Add a white list of extensions which are allowed to be uploaded.","  def extension_whitelist","    %w(jpg jpeg gif png)","  end","end",""],"id":4},{"start":{"row":0,"column":0},"end":{"row":20,"column":3},"action":"insert","lines":["class PictureUploader < CarrierWave::Uploader::Base","  include CarrierWave::MiniMagick","  process resize_to_limit: [400, 400]","","  if Rails.env.production?","    storage :fog","  else","    storage :file","  end","","  # Override the directory where uploaded files will be stored.","  # This is a sensible default for uploaders that are meant to be mounted:","  def store_dir","    \"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}\"","  end","","  # Add a white list of extensions which are allowed to be uploaded.","  def extension_whitelist","    %w(jpg jpeg gif png)","  end","end"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":9,"column":0},"end":{"row":9,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":4,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1540796449955,"hash":"502fd2176a1deea2f8f0e3051d5bda9fbffaffee"}