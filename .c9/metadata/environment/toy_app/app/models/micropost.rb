{"filter":false,"title":"micropost.rb","tooltip":"/toy_app/app/models/micropost.rb","undoManager":{"mark":2,"position":2,"stack":[[{"start":{"row":0,"column":0},"end":{"row":2,"column":0},"action":"remove","lines":["class Micropost < ApplicationRecord","end",""],"id":2},{"start":{"row":0,"column":0},"end":{"row":2,"column":3},"action":"insert","lines":["class Micropost < ApplicationRecord","  validates :content, length: { maximum: 140 }","end"]}],[{"start":{"row":0,"column":0},"end":{"row":2,"column":3},"action":"remove","lines":["class Micropost < ApplicationRecord","  validates :content, length: { maximum: 140 }","end"],"id":3},{"start":{"row":0,"column":0},"end":{"row":3,"column":3},"action":"insert","lines":["class Micropost < ApplicationRecord","  belongs_to :user","  validates :content, length: { maximum: 140 }","end"]}],[{"start":{"row":0,"column":0},"end":{"row":3,"column":3},"action":"remove","lines":["class Micropost < ApplicationRecord","  belongs_to :user","  validates :content, length: { maximum: 140 }","end"],"id":5},{"start":{"row":0,"column":0},"end":{"row":4,"column":3},"action":"insert","lines":["class Micropost < ApplicationRecord","  belongs_to :user","  validates :content, length: { maximum: 140 },","                      presence: true","end"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":3},"end":{"row":4,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1540448179746,"hash":"1a9d94838f0520e0b2f7501076341a32833f8ca4"}