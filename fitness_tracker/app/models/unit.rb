class Unit < ActiveRecord::Base

  # def amount(value)
  #   Quantity.new(value, self)
  # end

  CENTIMETER = 1
  METER = 100 * 1
  INCH = 2.54 * 1
  FOOT = 12 * 2.54 * 1
  YARD = 3 * 12 * 2.54 * 1
  MILE = 1760 * 3 * 12 * 2.54 * 1

  GRAM = 1
  KILOGRAM = 1000 * 1
  POUND = 453.6 * 1

  CELSIUS = 1
  FAHRENHEIT = 1 * 9/5 + 32

end