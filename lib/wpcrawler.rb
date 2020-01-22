require 'JSON'
require 'http'
require 'tty-spinner'

class Crawler
  attr_accessor :url

  def initialize(url, type)
  	@url = url
  	@type = type
  end

  def scrape
  	begin
  		spinner = TTY::Spinner.new("[:spinner]", format: :dots)
  		spinner.auto_spin # Automatic animation with default interval
	  	output = File.open( "wpoutputfile.csv","w+" )
	    output.puts "Date | Title | Author | Link | Status"
	    (1..8).each do |n|
	      response = HTTP.timeout(5).get("https://" + @url.to_s + "/wp-json/wp/v2/#{@type}/" +"?page=#{n}&per_page=100").to_s
	      JSON.parse(response).each do |e|
	        output.puts "#{e.fetch('date')}" + "| #{e&.dig('title','rendered')}" + "| #{e.fetch('author')}"+ "| #{e.dig('link')}"+ "| #{e.dig('status')}"
	      end rescue TypeError
	    end
	    output.close
	    spinner.stop('Done!') # Stop animation
	rescue HTTP::TimeoutError
		puts "Connection ERROR - make sure your website is a wordpress site with an open api"
	end
  end
end

site = Crawler.new(ARGV[0], ARGV[1])

if ARGV[1] == "pages" or ARGV[1] == "posts"
  site.scrape
else
	puts "ERROR: type needs to be pages or posts"
end

