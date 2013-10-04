class Calculator
  def initialize
    @chain = ""
  end

  def enter value
    @chain << value.to_s
  end

  def result
    @chain = eval(@chain).to_s
  end
end
