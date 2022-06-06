class Manager
    attr_accessor :name, :department, :age

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age

        self.class.all << self
    end

    def employees
        Employee.all.select{|employee| employee.manager == self }
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        all.collect{|manager| manager.department }
    end

    def self.average_age
        all.reduce(0) {|sum, manager| sum + manager.age } / all.count.to_f
    end
end
