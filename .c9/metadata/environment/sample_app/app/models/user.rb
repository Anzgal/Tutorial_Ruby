{"filter":false,"title":"user.rb","tooltip":"/sample_app/app/models/user.rb","undoManager":{"mark":5,"position":5,"stack":[[{"start":{"row":0,"column":0},"end":{"row":3,"column":3},"action":"remove","lines":["class User < ApplicationRecord","  validates :name,  presence: true, length: { maximum: 50 }","  validates :email, presence: true, length: { maximum: 255 }","end"],"id":5},{"start":{"row":0,"column":0},"end":{"row":5,"column":3},"action":"insert","lines":["class User < ApplicationRecord","  validates :name,  presence: true, length: { maximum: 50 }","  VALID_EMAIL_REGEX = /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i","  validates :email, presence: true, length: { maximum: 255 },","                    format: { with: VALID_EMAIL_REGEX }","end"]}],[{"start":{"row":0,"column":0},"end":{"row":5,"column":3},"action":"remove","lines":["class User < ApplicationRecord","  validates :name,  presence: true, length: { maximum: 50 }","  VALID_EMAIL_REGEX = /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i","  validates :email, presence: true, length: { maximum: 255 },","                    format: { with: VALID_EMAIL_REGEX }","end"],"id":6},{"start":{"row":0,"column":0},"end":{"row":6,"column":3},"action":"insert","lines":["class User < ApplicationRecord","  validates :name,  presence: true, length: { maximum: 50 }","  VALID_EMAIL_REGEX = /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i","  validates :email, presence: true, length: { maximum: 255 },","                    format: { with: VALID_EMAIL_REGEX },","                    uniqueness: true","end"]}],[{"start":{"row":0,"column":0},"end":{"row":6,"column":3},"action":"remove","lines":["class User < ApplicationRecord","  validates :name,  presence: true, length: { maximum: 50 }","  VALID_EMAIL_REGEX = /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i","  validates :email, presence: true, length: { maximum: 255 },","                    format: { with: VALID_EMAIL_REGEX },","                    uniqueness: true","end"],"id":7},{"start":{"row":0,"column":0},"end":{"row":6,"column":3},"action":"insert","lines":["class User < ApplicationRecord","  validates :name,  presence: true, length: { maximum: 50 }","  VALID_EMAIL_REGEX = /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i","  validates :email, presence: true, length: { maximum: 255 },","                    format: { with: VALID_EMAIL_REGEX },","                    uniqueness: { case_sensitive: false }","end"]}],[{"start":{"row":0,"column":0},"end":{"row":6,"column":3},"action":"remove","lines":["class User < ApplicationRecord","  validates :name,  presence: true, length: { maximum: 50 }","  VALID_EMAIL_REGEX = /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i","  validates :email, presence: true, length: { maximum: 255 },","                    format: { with: VALID_EMAIL_REGEX },","                    uniqueness: { case_sensitive: false }","end"],"id":8},{"start":{"row":0,"column":0},"end":{"row":7,"column":3},"action":"insert","lines":["class User < ApplicationRecord","  before_save { self.email = email.downcase }","  validates :name,  presence: true, length: { maximum: 50 }","  VALID_EMAIL_REGEX = /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i","  validates :email, presence: true, length: { maximum: 255 },","                    format: { with: VALID_EMAIL_REGEX },","                    uniqueness: { case_sensitive: false }","end"]}],[{"start":{"row":0,"column":0},"end":{"row":7,"column":3},"action":"remove","lines":["class User < ApplicationRecord","  before_save { self.email = email.downcase }","  validates :name,  presence: true, length: { maximum: 50 }","  VALID_EMAIL_REGEX = /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i","  validates :email, presence: true, length: { maximum: 255 },","                    format: { with: VALID_EMAIL_REGEX },","                    uniqueness: { case_sensitive: false }","end"],"id":9},{"start":{"row":0,"column":0},"end":{"row":8,"column":3},"action":"insert","lines":["class User < ApplicationRecord","  before_save { self.email = email.downcase }","  validates :name, presence: true, length: { maximum: 50 }","  VALID_EMAIL_REGEX = /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i","  validates :email, presence: true, length: { maximum: 255 },","                    format: { with: VALID_EMAIL_REGEX },","                    uniqueness: { case_sensitive: false }","  has_secure_password","end"]}],[{"start":{"row":0,"column":0},"end":{"row":8,"column":3},"action":"remove","lines":["class User < ApplicationRecord","  before_save { self.email = email.downcase }","  validates :name, presence: true, length: { maximum: 50 }","  VALID_EMAIL_REGEX = /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i","  validates :email, presence: true, length: { maximum: 255 },","                    format: { with: VALID_EMAIL_REGEX },","                    uniqueness: { case_sensitive: false }","  has_secure_password","end"],"id":10},{"start":{"row":0,"column":0},"end":{"row":9,"column":3},"action":"insert","lines":["class User < ApplicationRecord","  before_save { self.email = email.downcase }","  validates :name, presence: true, length: { maximum: 50 }","  VALID_EMAIL_REGEX = /\\A[\\w+\\-.]+@[a-z\\d\\-.]+\\.[a-z]+\\z/i","  validates :email, presence: true, length: { maximum: 255 },","                    format: { with: VALID_EMAIL_REGEX },","                    uniqueness: { case_sensitive: false }","  has_secure_password","  validates :password, presence: true, length: { minimum: 6 }","end"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":9,"column":3},"end":{"row":9,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1540764619190,"hash":"7bfdcfb85cef323af2e0fbd06bb96bedce4b20d8"}