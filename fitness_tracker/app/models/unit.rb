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

  def celsius_to_fahrenheit(value)
    self.value = ((value * 9/5) + 32).round(1)
  end

  def fahrenheit_to_celsius(value)
    self.value = ((value - 32) * 5/9).round(1)
  end


  CENTIMETER = 1
  METER = 100 * 1
  INCH = 2.54 * 1
  FOOT = 12 * 2.54 * 1
  YARD = 3 * 12 * 2.54 * 1
  MILE = 1760 * 3 * 12 * 2.54 * 1

  KILOGRAM = 1
  POUND = 2.2 * 1


end