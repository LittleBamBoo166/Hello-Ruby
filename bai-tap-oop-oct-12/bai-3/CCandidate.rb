require_relative "Candidate.rb"

class CCandidate < Candidate
    attr_accessor :literatureScore, :historyScore, :geographyScore

    def initialize (id, fullName, address, priority, literatureScore, historyScore, geographyScore)
        super(id, fullName, address, priority)
        @literatureScore = literatureScore
        @historyScore = historyScore
        @geographyScore = geographyScore
    end

    def show
        super()
        puts "literature score: #{@literatureScore}"
        puts "history score: #{@historyScore}"
        puts "geography score: #{@geographyScore}"
    end
end