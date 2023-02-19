require 'pry'

require_relative '../config/environment.rb'



# class Author

#     attr_reader :name

#     def initialize(name)
#         @name = name

#     end
# end


# class Magazine

#     attr_writer :name, :category

#     @@all = []

#     def initialize(name, category)
#         @name = name
#         @category = category
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

# end

# class Article

#     attr_reader :author, :magazine, :title

#     @@all = []

#     def initialize(author, magazine, title)
#         @author = author
#         @magazine = magazine
#         @title = title
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

# end

author = Author.new("Oyaki")
magazine = Magazine.new("NYC Times", "World Matters")
article = Article.new(author, magazine, "Fall of Solana")

# author1 = Author.new("Zaki")
# magazine2 = Magazine.new("MenFit", "Health")
# article2 = Article.new(author, magazine, "Six-pack guide")

binding.pry
