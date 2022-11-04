require_relative "ACandidate.rb"
require_relative "BCandidate.rb"
require_relative "CCandidate.rb"

class Admission.rb
    @@candidateList = Array.new

    def addACandidate
        print 'a candidate id: '
        id = gets
        print 'math score: '
        math = gets
        print 'physics score: '
        physics = gets
        print 'chemistry score: '
        chemistry = gets
        
    end
end