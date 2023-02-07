require_relative './decorator'
class capitalize_Decorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
