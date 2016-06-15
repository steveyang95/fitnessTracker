class Unit < ActiveRecord::Base

  # def amount(value)
  #   Quantity.new(value, self)
  # end

  def inch_to_centimeter(value)
    self.value = (value * Unit::INCH).round(2)
  end

  def centimeter_to_inch(value)
    self.value = (value / Unit::INCH).round(2)
  end

  def kilogram_to_pound(value)
    self.value = (value * Unit::POUND).round(2)
  end

  def pound_to_kilogram(value)
    self.value = (value / Unit::POUND).round(2)
  end

  def celsium_to_fahrenheit(value)
    self.value = (value * Unit::FAHRENHEIT).round(1)
  end

  def fahrenheit_to_celsium(value)
    self.value = (value / Unit::FAHRENHEIT).round(1)
  end


  CENTIMETER = 1
  METER = 100 * 1
  INCH = 2.54 * 1
  FOOT = 12 * 2.54 * 1
  YARD = 3 * 12 * 2.54 * 1
  MILE = 1760 * 3 * 12 * 2.54 * 1

  KILOGRAM = 1
  POUND = 2.2 * 1

  CELSIUS = 1
  FAHRENHEIT = 1 * 9/5 + 32

end