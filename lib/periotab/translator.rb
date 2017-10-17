module Periotab

  class Translator
    def initialize total:, gratuity
      @total = total
      @gratuity = gratuity
    end

    def generate
      return calculation if number_based?
      string_based
    end

    def number_based?
      (@gratuity.is_a? Numeric) || (@gratuity.integer?)
    end

    def string_based
      case @gratuity.downcase
      when 'high'
          calculation 25
      when 'standard'
        calculation 18
      when 'low'
        calculation 15
    end

    def calculation gratuity = @gratuity
      @total += @total * (gratuity.to_f / 100)
    end
  end

end