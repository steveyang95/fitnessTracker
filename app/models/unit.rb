class Unit < ActiveRecord::Base

  CENTIMETER = 1
  METER = 100 * 1
  INCH = 2.54 * 1
  FOOT = 12 * 2.54 * 1
  YARD = 3 * 12 * 2.54 * 1
  MILE = 1760 * 3 * 12 * 2.54 * 1

  KILOGRAM = 1
  POUND = 2.2 * 1

  def self.get_correct_height(object, only_metric)
    height = Unit.create({value: object.height, unit_name: "H", metric: object.metric})
    #only_metric is bool and is metric passed into the shell
    if only_metric  # if we want only in metric system
      value = object.metric ? object.height : height.inch_to_centimeter(object.height)
    else # if we want only in imperial
      value = object.metric ? height.centimeter_to_inch(object.height) : object.height
    end
    value
  end

  def self.get_correct_weight(object, only_metric)
    weight = Unit.create({value: object.weight, unit_name: "W", metric: object.metric})
    if only_metric
      value = object.metric ? object.weight : weight.pound_to_kilogram(weight.value)
    else
      value = object.metric ? weight.kilogram_to_pound(weight.value) : object.weight
    end
    value
  end

  def self.get_correct_temperature(object, only_metric)
    temperature = Unit.create({value: object.temperature, unit_name: "T", metric: object.metric})
    if only_metric
      value = object.metric ? object.temperature : temperature.fahrenheit_to_celsius(temperature.value)
    else
      value = object.metric ? temperature.celsius_to_fahrenheit(temperature.value) : object.temperature
    end
    value
  end

  # Returns bool whether input is metric
  def self.is_metric?(bool)
    bool == "true" ? true : false
  end

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
end