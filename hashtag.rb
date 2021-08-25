
def contains_chars?(str)
  return true if str.split.length >= 1
  return false
end

def generateHashtag(str)
  # puts "the len is #{str.length}"
  return false unless contains_chars? str
  hashtag = str.split.map{|wrd|wrd.capitalize}.unshift('#').join
  return hashtag if hashtag.length <= 140
  return false
end

# generateHashtag("")# .to eq(false) "Expected an empty string to return false")
# generateHashtag(" " * 200)#.to  eq(false), "Still an empty string")
# generateHashtag("Do We have A Hashtag")#.to  eq("#DoWeHaveAHashtag", "Expected a Hashtag (#) at the beginning.")
# generateHashtag("Codewars")#).to  eq("#Codewars", "Should handle a single word.")
# generateHashtag("Codewars Is Nice")#).to  eq("#CodewarsIsNice", "Should remove spaces.")
# generateHashtag("Codewars is nice")#).to  eq("#CodewarsIsNice", "Should capitalize first letters of words.")
# generateHashtag("code" + " " * 140 + "wars")#).to  eq("#CodeWars")
# # generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat")).to  eq(false, "Should return false if the final word is longer than 140 chars.")
# generateHashtag("a" * 139)#).to  eq("#A" + "a" * 138, "Should work")
# generateHashtag("a" * 140)#).to  eq(false, "Too long")


puts generateHashtag('woi oi dont watch')
