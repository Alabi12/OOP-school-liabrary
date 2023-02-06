class Person
  attr_accessor :name, :age
  attr_reader :id, :rentals

  @person_count ||= 0

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = @person_count += 1
    @name = name
    @age = age
    @rentals = []
    @parent_permission = parent_permission
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
