require 'pry'

require_relative './author.rb'
require_relative './magazine.rb'



class Article

    attr_reader :author, :magazine, :title

    @@all = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self


    end

    def self.all
        @@all
    end

end

author = Author.new("Oyaki")
magazine = Magazine.new("NYC Times", "World Matters")
article = Article.new(author, magazine, "Fall of Solana")


binding.pry