class Fraction
    attr_accessor :numerator267, :denominator

    def initialize (numerator267, denominator)
        @numerator267 = numerator267
        @denominator = denominator
    end

    def UCLN(ts267, ms267)
        ts267 = ts267.to_i.abs
        ms267 = ms267.to_i.abs
        while ts267 != ms267 
            if ts267 > ms267 
                ts267 -= ms267
            else
                ms267 -= ts267
            end
        end
        ts267
    end

    def rutGon()
        i267 = UCLN(@numerator267, @denominator)
        @numerator267 = @numerator267 / i267
        @denominator = @denominator / i267
    end

    def + (other267)
        ts267 = @numerator267 * other267.denominator + other267.numerator267 * @denominator
        ms267 = @denominator * other267.denominator
        show(ts267,ms267)
    end

    def - (other267)
        ts267 = @numerator267 * other267.denominator - other267.numerator267 * @denominator
        ms267 = @denominator * other267.denominator
        show(ts267, ms267)
    end

    def * (other267)
        ts267 = @numerator267 * other267.numerator267
        ms267 = @denominator * other267.denominator
        show(ts267, ms267)
    end

    def / (other267)
        ts267 = @numerator267 * other267.denominator
        ms267 = @denominator * other267.numerator267
        show(ts267, ms267)
    end

    def show (ts267,ms267)
        ps267 = Fraction.new(ts267, ms267)
        ps267.rutGon
        ps267.to_s
    end

    def to_s ()
        puts("#{@numerator267}/#{@denominator}")
    end
end

p1267 = Fraction.new(1, 2)
p2267 = Fraction.new(3, 4)
p1267 + p2267
p1267 - p2267
p1267 * p2267
p1267 / p2267