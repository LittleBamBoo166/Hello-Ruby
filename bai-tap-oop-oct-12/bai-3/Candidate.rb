class Candidate
    attr_accessor :id, :fullName, :address, :priority

    def initialize (id, fullName, address, priority)
        @id = id
        @fullName = fullName
        @address = address
        @priority = priority
    end

    def show
        puts "id: #{@id}"
        puts "full name: #{@fullName}"
        puts "address: #{@address}"
        puts "priority: #{@priority}"
    end
end