require 'nokogiri'
require 'open-uri'
require 'pry'

class CrawlerService
  attr_accessor :quotes, :search

  def initialize(search)
    @search = search
    @quotes = Array.new
  end

  def scrape(url)
    Nokogiri::HTML(Net::HTTP.get(URI(url)))
  end

  def search
    doc = scrape("http://quotes.toscrape.com/tag/#{@search}/")
    quotes = doc.css('div.quote')
    quotes.each do |quote_element|
      title = quote_element.css('span.text').text
      author = quote_element.css('span small.author').text
      author_about = "http://quotes.toscrape.com#{quote_element.css('span a').attribute('href').value}"
      tags = quote_element.css('div.tags meta.keywords').attribute('content').value.split(',')

      @quotes << {quote: title, author: author, author_about: author_about, tags: tags}
    end
    @quotes
  end
end