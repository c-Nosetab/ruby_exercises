# employee_1 = ["Jim", "Jefferies", 70000, true]
# employee_2 = ["Maria", "Bamford", 80000, true] #employee_1 is a local variable

# puts employee_1[0] + " " + employee_1[1] + " makes $" + employee_1[2].to_s + " a year."

# puts "#{employee_1[0]} #{employee_1[1]} makes $#{employee_1[2]} a year."

# employee_1 = {"first_name" => "Jim", "last_name"  => "Jefferies", "salary" => 70000, "active" => true}

# employee_2 = {"first_name" => "Maria", "last_name"  => "Bamford", "salary" => 80000, "active" => true}


# puts "#{employee_1["first_name"]} #{employee_1["last_name"]} makes \$#{employee_1["salary"]} a year"

# puts "#{employee_2["first_name"]} #{employee_2["last_name"]} makes \$#{employee_2["salary"]} a year"


# employee_1 = {first_name: "Jim", last_name: "Jefferies", salary: 70000, active: true}

# employee_2 = {first_name: "Maria", last_name: "Bamford", salary: 80000, active: true}


# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes \$#{employee_1[:salary]} a year"

# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes \$#{employee_2[:salary]} a year"

class Employee
  attr_reader :first_name, :last_name, :salary, :active

  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes \$#{salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end

end

employee_1 = Employee.new(
                          first_name: "Jim",
                          last_name: "Jefferies",
                          salary: 70000,
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Maria",
                          last_name: "Bamford",
                          salary: 80000,
                          active: true
                          )

employee_1.print_info

puts employee_1.give_annual_raise

puts employee_2.first_name

employee_2.active = false

puts employee_2.active