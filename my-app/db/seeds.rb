lecture_names = ["経済学入門","経済思想入門","経済史入門","統計学入門","基礎ミクロ経済学","基礎マクロ経済学","基礎計量経済学","国際経済学Ⅰ",
"国際経済学Ⅱ","古典解析","現象数理","ミクロ経済学Ⅰ","ミクロ経済学Ⅱ","文明史","経済史A","財政学Ⅰ","財政学","数量経済分析","応用数理","マクロ経済学Ⅰ",
"マクロ経済学Ⅱ"]

lecture_names.each do |l|
  LectureName.create(content: l)
end