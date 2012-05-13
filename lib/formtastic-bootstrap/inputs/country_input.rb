module FormtasticBootstrap
  module Inputs
    class CountryInput < Formtastic::Inputs::CountryInput
      include Base

      def to_html
        generic_input_wrapping do
          builder.country_select(method, priority_countries, input_options, input_html_options)
        end
      end

      def priority_countries
        #options[:priority_countries] || builder.priority_countries
        options[:priority_countries]
      end

    end
  end
end