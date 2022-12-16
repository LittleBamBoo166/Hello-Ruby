require_relative "ACandidate.rb"
require_relative "BCandidate.rb"
require_relative "CCandidate.rb"

class Admission.rb
    @@candidateList = Array.new

    def addACandidate
        print 'a candidate id: '
        id = gets
        print 'full name: '
        name = gets
        print 'address: '
        address = gets
        print 'priority: '
        priority = gets
        print 'math score: '
        math = gets
        print 'physics score: '
        physics = gets
        print 'chemistry score: '
        chemistry = gets
        candidate = ACandidate.new(id, name, address, priority,math, physics, chemistry)
        @@candidateList.push(candidate)
    end

    def addBCandidate
        print 'b candidate id: '
        id = gets
        print 'full name: '
        name = gets
        print 'address: '
        address = gets
        print 'priority: '
        priority = gets
        print 'math score: '
        math = gets
        print 'chemistry score: '
        chemistry = gets
        print 'biology score: '
        biology = gets
        candidate = BCandidate.new(id, name, address, priority, math, chemistry, biology)
        @@candidateList.push(candidate)
    end

    def addCCandidate
        print 'c candidate id: '
        id = gets
        print 'full name: '
        name = gets
        print 'address: '
        address = gets
        print 'priority: '
        priority = gets
        print 'literature score: '
        literature = gets
        print 'history score: '
        history = gets
        print 'geography score: '
        geography = gets
        candidate = CCandidate.new(id, name, adress, priority, literature, history, geography)
        @@candidateList.push(candidate)
    end

    def showCandidateInfo
        length = @@candidateList.lenght
        for i in 0..length do
            @@candidateList[i].display
            puts '-----------------------------'
        end
    end
end
