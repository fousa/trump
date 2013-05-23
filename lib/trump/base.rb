require "curl_wrapper"
require "json/pure"

module Trump
  class Base
    class << self
      def add(name)
        puts trump_text
        puts_text("")

        puts_text("Fetching data for gem '#{name}'")
        curl = CurlWrapper.new do |config|
          config.url "https://rubygems.org/api/v1/gems/#{name}.json"
        end
        curl.run

        content = curl.to_s
        if content == "This rubygem could not be found."
          puts_text("This rubygem could not be found.")
          puts_text("")
          puts end_text
          return
        end

        puts_text("Parsing data")
        your_gem = JSON.parse(content)
        url = your_gem["homepage_uri"] || your_gem["documentation_uri"]

        puts_text("Detecting Gemfile")
        if File.exists?("Gemfile")
          File.open("Gemfile", 'a') do |file|
            file.puts ""
            file.puts "# #{your_gem["info"][0..75]}"
            file.puts "# [#{name}](#{url})"
            file.puts "gem \"#{name}\", \"#{your_gem["version"]}\""
          end
          puts_text("Adding gem '#{name}' to the Gemfile.")
        else
          puts_text("There is no Gemfile available in this directory.")
        end
        puts_text("")
        puts end_text
      end

      def trump_text
        <<TEXT
#############################################################################################################
### TRUMP ###################################################################################################
#############################################################################################################
TEXT
      end

      def end_text
        <<TEXT
#############################################################################################################
TEXT
      end

      def sharp_count
        "#############################################################################################################".size
      end

      def puts_text(text)
        printf "### %-#{sharp_count - 8}s ###\n", text
      end
    end
  end
end





