module Filterable
  extend ActiveSupport::Concern

  module ClassMethods
    def filter(filtering_params)
      results = self.where(nil)
      filtering_params.each do |key, value|
        if key == 'datetime' && value.present?
          array_of_dates = YAML.load(value)
          a = Date.parse(array_of_dates[0])
          b = Date.parse(array_of_dates[1])
          # smaller date
          start_date = a < b ? a : b
          end_date = a > b ? a : b
          results = results.public_send(key, start_date, end_date)
        else
          results = results.public_send(key, value) if value.present?
        end
      end
      results
    end
  end
end
