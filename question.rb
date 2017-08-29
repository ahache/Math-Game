class Question
  def initialize
    @val1 = 1 + rand(20)
    @val2 = 1 + rand(20)
  end

  def get_answer
    @val1 + @val2
  end

  def show_problem
    "What does #{@val1} + #{@val2} equal?"
  end
end