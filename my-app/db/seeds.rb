kinds = ["重要情報","過去問","ノート","レポート","感想","その他"]

kinds.each do |kind|
  Kind.create(content: kind)
end