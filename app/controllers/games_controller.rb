require "open-uri"

class GamesController < ApplicationController
  def new
    @start_time = Time.now
    @letters = []
    8.times{@letters  << (65 + rand(25)).chr}
    @start_time = Time.now
  end

  def score
    @answer = params
    @end_time = Time.now
    @contains = contains(@answer)
    @real_word = real_word(@answer)
  end

  def contains(answer)

    answer[:word].split('').each do |char|
      @letters = answer[:letters]
      if @letters.include? char
        @letters.delete(char)
      else
        return false
      end
      return true
    end
  end

  def real_word(answer)
    url = 'https://wagon-dictionary.herokuapp.com/' + answer[:word]
    word_result = open(url).read
    result = JSON.parse(word_result)

    if result["found"] = false
      return false
    else
      return true
    end

  end

end
