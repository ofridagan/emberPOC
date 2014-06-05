describe ".helloText", ->
  When -> @result = "ofri"
  Then -> expect(@result).toEqual "ofri"
