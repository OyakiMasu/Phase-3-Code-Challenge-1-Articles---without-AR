require 'pry'

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

crypto = Article.new("Masahi", "NYC Times", "Fall of Solana")


binding.pry