require_relative "DocumentManager.rb"

class Main
    documentManager = DocumentManager.new()
    counter = 0

    until counter == -1 do
        puts "0. Add book"
        puts "1. Add magazine"
        puts "2. Add newspaper"
        puts "3. Show the list"
        puts "4. Delete by id"
        puts "5. Search by type of document"
        puts "-1. Exit"
        print "Input: "
        counter = gets
        if counter.to_i == -1
            exit
        end
        if counter.to_i == 0
            documentManager.addBook()
        end
        if counter.to_i == 1
            documentManager.addMagazine()
        end
        if counter.to_i == 2
            documentManager.addNewspaper()
        end
        if counter.to_i == 3
            documentManager.showDocumentList()
        end
        if counter.to_i == 4
            print "id: "
            id = gets
            documentManager.deleteById(id)
        end
        if counter.to_i == 5
            documentManager.searchByCase()
        end
    end
end