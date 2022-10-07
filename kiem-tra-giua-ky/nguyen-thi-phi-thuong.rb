class Vehical
    attr_accessor :id267, :brand267, :year267, :line267, :price267, :plate267, :color267

    def initialize (id267, brand267, year267, line267, price267, plate267, color267)
        @id267 = id267
        @brand267 = brand267
        @year267 = year267
        @line267 = line267
        @price267 = price267
        @plate267 = plate267
        @color267 = color267
    end

    def display
        puts "id: #{@id267}"
        puts "brand: #{@brand267}"
        puts "year of manufacture: #{@year267}"
        puts "price: #{@price267}"
        puts "car model: #{@line267}"
        puts "license plate: #{@plate267}"
        puts "color: #{@color267}"
    end
end

class Car < Vehical
    attr_accessor :seatNumber267, :engineType267, :fuel267, :airbag267, :registrationDate267

    def initialize (id267, brand267, year267, line267, price267, plate267, color267, seatNumber267, engineType267, fuel267, airbag267, registrationDate267)
        super(id267, brand267, year267, line267, price267, plate267, color267)
        @seatNumber267 = seatNumber267
        @engineType267 = engineType267
        @fuel267 = fuel267
        @airbag267 = airbag267
        @registrationDate267 = registrationDate267
    end

    def display
        super()
        puts "seat number: #{@seatNumber267}"
        puts "engine type: #{@engineType267}"
        puts "fuel type: #{@fuel267}"
        puts "airbag number: #{@airbag267}"
        puts "registration date: #{@registrationDate267}"
    end
end

class Motobike < Vehical
    attr_accessor :capacity267, :fuelTank267

    def initialize (id267, brand267, year267, line267, price267, plate267, color267, capacity267, fuelTank267)
        super(id267, brand267, year267, line267, price267, plate267, color267)
        @capacity267 = capacity267
        @fuelTank267 = fuelTank267
    end

    def display
        super()
        puts "capacity: #{@capacity267}"
        puts "fuel tank capacity: #{@fuelTank267}"
    end
end

class Truck < Vehical
    attr_accessor :grossTon267

    def initialize (id267, brand267, year267, line267, price267, plate267, color267, grossTon267)
        super(id267, brand267, year267, line267, price267, plate267, color267)
        @grossTon267 = grossTon267
    end

    def display
        super()
        puts "gross ton: #{@grossTon267}"
    end
end

class VehicalManagement
    @@vehicalList = Array.new

    def addCar
        print 'Car id: '
        id = gets
        print 'Brand: '
        brand = gets
        print 'Year: '
        year = gets
        print 'Line: '
        line = gets
        print 'Price: '
        price = gets
        print 'License plate: '
        plate = gets
        print 'Color: '
        color = gets
        print 'Seat number: '
        seat = gets
        print 'Engine type: '
        engine = gets
        print 'Fuel: '
        fuel = gets
        print 'Airbag number: '
        airbag = gets
        print 'Registration date: '
        date = gets
        car = Car.new(id, brand, year, line, price, plate, color, seat, engine, fuel, airbag, date)
        @@vehicalList.push(car)
    end

    def addMotobike
        print 'Motobike id: '
        id = gets
        print 'Brand: '
        brand = gets
        print 'Year: '
        year = gets
        print 'Line: '
        line = gets
        print 'Price: '
        price = gets
        print 'License plate: '
        plate = gets
        print 'Color: '
        color = gets
        print 'Capacity: '
        capa = gets
        print 'Fuel tank capacity: '
        tank = gets
        motobike = Motobike.new(id, brand, year, line, price, plate, color, capa, tank)
        @@vehicalList.push(motobike)
    end

    def addTruck
        print 'Truck id: '
        id = gets
        print 'Brand: '
        brand = gets
        print 'Year: '
        year = gets
        print 'Line: '
        line = gets
        print 'Price: '
        price = gets
        print 'License plate: '
        plate = gets
        print 'Color: '
        color = gets
        print 'Gross ton: '
        ton = gets
        truck = Truck.new(id, brand, year, line, price, plate, color, ton)
        @@vehicalList.push(truck)
    end

    def showVehicalList
        lenght = @@vehicalList.length
        for i in 0..lenght do
            @@vehicalList[i].display
            puts '--------------------------------'
        end
    end

    def deleteById id
        @@vehicalList = @@vehicalList.delete_if { |vehical| vehical.id267.include? id }
    end

    def searchByBrand key
        searchList = @@vehicalList.select { |vehical| vehical.brand267.include? key}
        searchList.each { |vehical| vehical.display }
    end

    def searchByColor key
        searchList = @@vehicalList.select { |vehical| vehical.color267.include? key}
        searchList.each { |vehical| vehical.display }
    end

    def searchByLicensePlates key
        searchList = @@vehicalList.select { |vehical| vehical.plate267.include? key}
        searchList.each { |vehical| vehical.display }
    end
end

class Main
    vehicalManagement = VehicalManagement.new()
    counter = 0

    until counter == -1 do
        puts "0. Them o to"
        puts "1. Them xe may"
        puts "2. Them xe tai"
        puts "3. Hien thi danh sach"
        puts "4. Xoa theo id"
        puts "5. Tim theo hang"
        puts "6. Tim theo mau"
        puts "7. Tim theo bien so"
        puts "-1. Thoat"
        print "Nhap: "
        counter = gets
        if counter.to_i == -1
            exit
        end
        if counter.to_i == 0
            vehicalManagement.addCar()
        end
        if counter.to_i == 1
            vehicalManagement.addMotobike()
        end
        if counter.to_i == 2
            vehicalManagement.addTruck()
        end
        if counter.to_i == 3
            vehicalManagement.showVehicalList()
        end
        if counter.to_i == 4
            print 'Xoa theo id: '
            id = gets
            vehicalManagement.deleteById(id)
            print 'DONE!'
        end
        if counter.to_i == 5
            print 'Nhap hang: '
            brand = gets
            vehicalManagement.searchByBrand(brand)
        end
        if counter.to_i == 6
            print 'Nhap mau: '
            color = gets
            vehicalManagement.searchByColor(color)
        end
        if counter.to_i == 7
            print 'Nhap bien so: '
            plate = gets
            vehicalManagement.searchByLicensePlates(plate)
        end
    end
end