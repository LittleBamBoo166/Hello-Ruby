require_relative "Document.rb"

class Book < Document
    attr_accessor :author, :numberOfPages

    def initialize (id, publisher, numberOfReleases, author, numberOfPages)
        super(id, publisher, numberOfReleases)
        @author = author
        @numberOfPages = numberOfPages
    end

    def display
        super()
        puts "author: #{@author}"
        puts "number of pages: #{@numberOfPages}"
    end
end