
This gem returns a CSV of all pages or posts from a wordpress website with an exposed api.

Usage:

The two method arguments are the website, and whether you want pages or posts.

gem install wpcrawler

in IRB:

require 'wpcrawler'
site = Crawler.new("www.techcrunch.com", "pages")

site.scrape

or in the command line:

ruby wpcrawler.rb www.wordpresswebsite.com pages


