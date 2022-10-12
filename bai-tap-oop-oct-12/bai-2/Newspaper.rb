require_relative "Document.rb"

class Newspaper < Document
    attr_accessor :releaseDate

    def initialize(id, publisher, numberOfReleases, releaseDate)
        super(id, publisher, numberOfReleases)
        @releaseDate = releaseDate
    end

    def display
        super()
        puts "release date: #{@releaseDate}"
    end
end