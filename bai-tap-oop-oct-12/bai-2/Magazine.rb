require_relative "Document.rb"

class Magazine < Document
    attr_accessor :releaseNumber, :releaseMonth

    def initialize (id, publisher, numberOfReleases, releaseNumber, releaseMonth)
        super(id, publisher, numberOfReleases)
        @releaseNumber = releaseNumber
        @releaseMonth = releaseMonth
    end

    def display
        super()
        puts "release number: #{@releaseNumber}"
        puts "release month: #{@releaseMonth}"
    end
end