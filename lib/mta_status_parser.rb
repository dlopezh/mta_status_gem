require "mta_status_parser/version"
require "open-uri"
require "nokogiri"
require "sanitize"

module MtaStatusParser


		def self.fetch_mta
			status_page = "http://web.mta.info/status/serviceStatus.txt"
		end
		

		#Opens and Cleans XML
	        filestring = ""
	        f = open(status_page)
	        f.each {|line| filestring += line }
	        filestring.gsub!(/&lt;/, "<").gsub!(/&gt;/, ">").gsub!(/&amp;nbsp;/, " ").gsub!(/&amp;/, "")

	    #Parse XML
        @doc = Nokogiri::HTML(filestring)

		def self.last_update
	    time = @doc.xpath('//service//timestamp')
        clean_time = Sanitize.clean!("#{time}")
        return clean_time
        puts clean_time
		end

end
