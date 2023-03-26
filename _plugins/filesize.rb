module Jekyll
  module CalcByte

    # ref: https://github.com/jekyll-octopod/jekyll-octopod/blob/master/lib/jekyll/octopod_filters.rb#L191
    # Gets a number of bytes and returns an human readable string of it.
    #
    #   {{ 1252251 | string_of_size }} => "1.19M"
    def string_of_size(bytes)
      bytes = bytes.to_i.to_f
      out = '0'
      return out if bytes == 0.0

      jedec = %w[Bytes KB MB GB]
      [3, 2, 1, 0].each { |i|
        if bytes > 1024 ** i
          out = "%.2f #{jedec[i]}" % (bytes / 1024 ** i)
          break
        end
      }

      return out
    end

    # ref: https://github.com/manjaro-sway/packages/blob/main/docs/_plugins/humanize.rb#L4
    def filesize(value)
      ##
      # For filesize values in bytes, returns the number rounded to 3
      # decimal places with the correct suffix.
      #
      # Usage:
      # {{ bytes }} >>> 123456789
      # {{ bytes | filesize }} >>> 117.738 MB
      filesize_tb = 1099511627776.0
      filesize_gb = 1073741824.0
      filesize_mb = 1048576.0
      filesize_kb = 1024.0

      begin
        value = value.to_f
      rescue Exception => e
        puts "#{e.class} #{e}"
        return value
      end

      if value >= filesize_tb
        return "%s&thinsp;TB" % (value / filesize_tb).to_f.round(3)
      elsif value >= filesize_gb
        return "%s&thinsp;GB" % (value / filesize_gb).to_f.round(3)
      elsif value >= filesize_mb
        return "%s&thinsp;MB" % (value / filesize_mb).to_f.round(3)
      elsif value >= filesize_kb
        return "%s&thinsp;KB" % (value / filesize_kb).to_f.round(0)
      elsif value == 1
        return "1&thinsp;byte"
      else
        return "%s&thinsp;bytes" % value.to_f.round(0)
      end
    end

  end
end

Liquid::Template.register_filter(Jekyll::CalcByte)
