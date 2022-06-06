class Employee
    attr_accessor :name, :salary, :manager

    @@all = []

    def self.all
        @@all
    end
    
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager

        self.class.all << self
    end

    def manager_name
        @manager.name
    end

    def self.paid_over(amount)
        all.select{|employee| employee.salary > amount }
    end

    def self.find_by_department(department)
        all.find{|employee| employee.manager.department == department }
    end

    def tax_bracket
        # going to assume the result SHOULD include the employee who called this method
        
        self.class.all.select{|employee| employee.salary.between?(self.salary - 1000, self.salary + 1000) }
    end
end
