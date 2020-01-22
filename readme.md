
This gem returns a CSV of all pages or posts from a wordpress website with an exposed api.

The attributes returned are publishing date, title, url, author number, and publishing status. For example:

| Date        | Title           | Author  | Link  | Status  |
|:-------------:|:-------------:|:-------------:|:-------------:|:-------------:|
|2020-01-03T14:12:16| Winter Party 2020 Ticket Widget| 105117099| https://techcrunch.com/pages/winter-party-2020-ticket-widget/| publish
|2020-01-02T10:44:55| Mobility Ticket Widget| 105117099| https://techcrunch.com/pages/mobility-ticket-widget/| publish
|2019-11-29T11:22:35| TechCrunch Gift Guide 2019| 5188242| https://techcrunch.com/pages/gift-guide-2019/| publish
|2019-11-21T09:19:34| Extra Crunch Community Perks| 68265137| https://techcrunch.com/pages/extra-crunch-community-perks/| publish

This CSV is separated with pipes (|) to ensure commas don't break page titles, so keep this in mind when importing into spreadsheets.

## Usage:

The two method arguments are the website, and whether you want pages or posts.

`gem install wpcrawler`

#### in IRB:

```
require 'wpcrawler'

site = Crawler.new("www.techcrunch.com", "pages")

site.scrape
```

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


