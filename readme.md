
This gem returns a CSV of all pages or posts from a wordpress website with an exposed api.

The attributes returned are title, url, author number, and publishing state.

This CSV is separated with pipes (|) to ensure commas don't break page titles, so keep this in mind when importing into spreadsheets.

## Usage:

The two method arguments are the website, and whether you want pages or posts.

`gem install wpcrawler`

#### in IRB:

`require 'wpcrawler'`

`site = Crawler.new("www.techcrunch.com", "pages")`

`site.scrape`

#### CLI

If you want to make a simple CLI create a script with the following:

``` 
site = Crawler.new(ARGV[0], ARGV[1])

if ARGV[1] == "pages" or ARGV[1] == "posts"
  site.scrape
else
  puts "ERROR: type needs to be pages or posts"
end 
```

and then use 

`ruby wpcrawler.rb www.website.com pages`


