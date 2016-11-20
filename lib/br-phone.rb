class Br_phone
  def initialize(phone)
    @phone = phone
  end

  def self.generate_cell_phone
    "+55#{'%07d' % rand(10**7)}#{'%04d' % rand(10**4)}"
  end

  def return_valid
    return nil if @phone.nil?
    result = (is_valid? @phone) ? @phone.gsub(/\D+/, "") : '-'

    case (result.size || 0)
      when 13
        '+' << result
      when 12
        '+55' << result
      else
        nil
    end
  end

  private

  def is_valid?(phone)
    result = phone =~ /\A[+]?[0-9]*\.?[0-9]+\Z/
    return false if result.nil?

    result = phone.gsub(/\D+/, "")
    return result.size == 13 || result.size == 12
  end
end