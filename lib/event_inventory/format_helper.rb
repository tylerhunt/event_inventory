module EventInventory
  module FormatHelper
    # Formats keys for use in parsing responses and building query strings.
    def format_key(key, old_format=false)
      key = key.to_s
      key.upcase! if key == 'id'
      key.gsub!(/_id$/, '_ID')
      key.gsub!(/_url$/, '_URL')
      old_format ? key.upcase : key.camelize
    end

    # Formats and escapes query values for use in a query string.
    def format_query_value(value)
      value = case value
        when Time, Date then value.to_s(:db)
        else value.to_s
      end

      CGI.escape(value)
    end
  end
end
