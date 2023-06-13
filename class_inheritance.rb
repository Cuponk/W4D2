class Employee
    attr_reader :name, :salary, :title, :boss, :manager
    def initialize(name, salary, title, boss=nil)
        @name = name
        @salary = salary
        @title = title
        @boss = boss
        @manager = false
    end

    def bonus(multiplyer)
        @salary * multiplyer
    end
end

class Manager < Employee
    def initialize(name, salary, title, boss=nil)
        super
        @employees = []
    end

    def add_employee(employee)
        @employees << employee
        if @manager == false
            @manager = true
        end
    end
    def bonus(multiplyer)
        total_sal = 0
        @employees.each do |i|
            if i.manager
                total_sal += i.salary * multiplyer + i.bonus(multiplyer)
            else
                total_sal += i.salary * multiplyer
            end
        end
        total_sal
    end
end

darren = Manager.new('darren', 78000, 'ta-man')
ned = Manager.new('ned', 1000000000, 'founder')
shawna= Employee.new('shawna', 12000, 'ta')
david = Employee.new('david', 10000, 'ta')

ned.add_employee(darren)
darren.add_employee(shawna)
darren.add_employee(david)


 p ned.bonus(5)
p darren.bonus(4)
 p david.bonus(3)