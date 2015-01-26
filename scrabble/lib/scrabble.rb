def score_calc(letters)
  capital_letters = letters.upcase
  score = 0
  while !capital_letters.empty?
    letter = capital_letters.slice!(0)
    SCORE_HASH.each do |key, value|
      if SCORE_HASH[key].include?(letter)
        score += key
      end
    end
  end
  score
end

SCORE_HASH = {
    1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    2 => ["D", "G"],
    3 => ["B", "C", "M", "P"],
    4 => ["F", "H", "V", "W", "Y"],
    5 => ["K"],
    8 => ["J", "X"],
   10 => ["Q", "Z"]
}
