class Document
    attr_accessor :id, :publisher, :numberOfReleases

    def initialize (id, publisher, numberOfReleases)
        @id = id
        @publisher = publisher
        @numberOfReleases = numberOfReleases
    end

    def display
        puts "id: #{@id}"
        puts "publisher: #{@publisher}"
        puts "number of releases: #{@numberOfReleases}"
    end
end