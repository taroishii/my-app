{"filter":false,"title":"want.rb","tooltip":"/monolist/app/models/want.rb","undoManager":{"mark":1,"position":1,"stack":[[{"start":{"row":0,"column":22},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":1,"column":2},"end":{"row":3,"column":5},"action":"insert","lines":["def self.ranking","    self.group(:item_id).order('count_item_id DESC').limit(10).count(:item_id)","  end"],"id":3}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":5},"end":{"row":3,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":2,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1543057788560,"hash":"aa073dd64d7632055973c33d449ab13c97814a6e"}