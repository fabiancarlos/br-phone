class Br_phone
  def self.generate_cell_phone
    "+5565#{rand(10**5)}#{rand(10**4)}"
  end

  def self.phone_is_valid?(phone)
  	result = phone =~ /\A[+]?[0-9]*\.?[0-9]+\Z/
  	return false if result.nil? # true is 0 (zero)

  	result = phone.gsub(/\D+/, "")
  	return result.size == 13 || result.size == 12
  end

  def self.return_valid_phone(phone)
  	result = phone.gsub(/\D+/, "").strip
  end
end