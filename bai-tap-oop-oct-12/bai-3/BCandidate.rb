require_relative "Candidate.rb"

class BCandidate < Candidate
    attr_accessor :mathScore, :chemistryScore, :biologyScore

    def initialize (id, fullName, address, priority, mathScore, chemistryScore, biologyScore)
        super(id, fullName, address, priority)
        @mathScore = mathScore
        @chemistryScore = chemistryScore
        @biologyScore = biologyScore
    end

    def show
        super()
        puts "math score: #{@mathScore}"
        puts "chemistry score: #{@chemistryScore}"
        puts "biology score: #{@biologyScore}"
    end
end