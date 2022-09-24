class Human
    attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation

    def initialize name, hair, weight, height, age, phone, email, nation
        @name = name
        @hair = hair
        @weight = weight
        @height = height
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end

    def display
        puts "Name: #{@name}"
        puts "Hair color: #{@color}"
        puts "Weight: #{@weight} kg"
        puts "Height: #{@height} cm"
        puts "Age: #{@age}"
        puts "Phone number: #{@phone}"
        puts "Email: #{@email}"
        puts "Nation: #{@nation}"
    end
end

class Student < Human
    attr_accessor :math_score, :english_score, :literature_score

    def initialize name, hair, weight, height, age, phone, email, nation, math_score, english_score, literature_score
        super(name, hair, weight, height, age, phone, email, nation)
        @math_score = math_score
        @english_score = english_score
        @literature_score = literature_score
    end

    def averageScore
        puts 'Average score: %.2f' % [(@math_score.to_f + @english_score.to_f + @literature_score.to_f) / 3]
        puts "\n"
    end

    def display
        super()
        puts "Math score: #{@math_score}"
        puts "English score: #{@english_score}"
        puts "Literature score: #{@literature_score}"
    end
end

student_1 = Student.new("Nguyen Thi Phi Thuong", "black", 45.5, 148, 21, "(249) 613-4107 x836", "Augustine_Kessler@hotmail.com", "Vietnam", 10, 10, 10)
student_2 = Student.new("Erna Watsica", "red", 50, 175, 21, "(378) 675-7776", "Frederic.Schamberger@gmail.com", "Portugal", 9, 9, 9)
puts "Student list:"
student_1.display
student_1.averageScore
student_2.display
student_2.averageScore

studentList = [student_1, student_2]
studentList = studentList.sort_by{|a| [a.averageScore]}
studentList = studentList.reverse
puts "Arranged student list:"
puts "#{studentList}"