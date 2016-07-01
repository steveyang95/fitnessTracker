module ConversionHelper
  # Object will be only Animal and Baby for now! Both Animal and Baby has a metric, weight, and height attribute
  
  def convert_height(object, new_metric)
    height = Unit.create({value: object.height, unit_name: "H", metric: object.metric})
    #new_metric is bool and is metric passed into the shell
    if new_metric  # if we want only in metric system
      value = object.metric ? object.height : height.inch_to_centimeter(object.height)
    else # if we want only in imperial
      value = object.metric ? height.centimeter_to_inch(object.height) : object.height
    end
    value
  end

  def convert_weight(object, new_metric)
    weight = Unit.create({value: object.weight, unit_name: "W", metric: object.metric})
    if new_metric
      value = object.metric ? object.weight : weight.pound_to_kilogram(weight.value)
    else
      value = object.metric ? weight.kilogram_to_pound(weight.value) : object.weight
    end
    value
  end

  def convert_temperature(object, new_metric)
    temperature = Unit.create({value: object.temperature, unit_name: "T", metric: object.metric})
    if new_metric
      value = object.metric ? object.temperature : temperature.fahrenheit_to_celsius(temperature.value)
    else
      value = object.metric ? temperature.celsius_to_fahrenheit(temperature.value) : object.temperature
    end
    value
  end

  def is_metric?(bool)
    bool == "true" ? true : false
  end
end