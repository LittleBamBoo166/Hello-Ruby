require_relative "Candidate.rb"

class ACandidate < Candidate
    attr_accessor :mathScore, :physicsScore, :chemistryScore

    def initialize (id, fullName, address, priority, mathScore, physicsScore, chemistryScore)
        super(id, fullName, address, priority)
        @mathScore = mathScore
        @physicsScore = physicsScore
        @chemistryScore = chemistryScore
    end

    def show
        super()
        puts "math score: #{@mathScore}"
        puts "physics score: #{@physicsScore}"
        puts "chemistry score: #{@chemistryScore}"
    end
end