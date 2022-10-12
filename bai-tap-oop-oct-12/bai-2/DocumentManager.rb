require_relative "Document.rb"
require_relative "Book.rb"
require_relative "Magazine.rb"
require_relative "Newspaper.rb"

class DocumentManager
    @@documentList = Array.new

    def addBook
        print 'book id: '
        id = gets
        print 'publisher: '
        publiser = gets
        print 'number of releases: '
        numberOfReleases = gets
        print 'author: '
        author = gets
        print 'number of pages: '
        numberOfPages = gets
        book = Book.new(id, publiser, numberOfReleases, author, numberOfPages)
        @@documentList.push(book)
    end

    def addMagazine
        print 'magazine id: '
        id = gets
        print 'publisher: '
        publiser = gets
        print 'number of releases: '
        numberOfReleases = gets
        print 'release number: '
        releaseNumber = gets
        print 'release month: '
        releaseMonth = gets
        magazine = Magazine.new(id, publiser, numberOfReleases, releaseNumber, releaseMonth)
        @@documentList.push(magazine)
    end

    def addNewspaper
        print 'newspaper id: '
        id = gets
        print 'publisher: '
        publiser = gets
        print 'number of releases: '
        numberOfReleases = gets
        print 'release date: '
        releaseDate = gets
        newspaper = Newspaper.new(id, publiser, numberOfReleases, releaseDate)
        @@documentList.push(newspaper)
    end

    def showDocumentList
        lenght = @@documentList.length
        for i in 0..lenght do
            @@documentList[i].display
            puts '----------------------------'
        end
    end

    def deleteById id
        @@documentList = @@documentList.delete_if { |document| document.id.include? id }
        print 'DONE'
    end

    def searchByCase
        print 'search for: 1. book | 2. magazine | 3. newspaper --> '
        input = gets
        if input.to_i == 1
            bookList = @@documentList.select { |document| document.instance_of? Book }
            bookList.each { |book| book.display }
        end
        if input.to_i == 2
            magazineList = @@documentList.select { |document| document.instance_of? Magazine }
            magazineList.each { |magazine| magazine.display }
        end
        if input.to_i == 3
            newspaperList = @@documentList.select { |document| document.instance_of? Newspaper }
            newspaperList.each { |newspaper| newspaper.display }
        end
    end
end