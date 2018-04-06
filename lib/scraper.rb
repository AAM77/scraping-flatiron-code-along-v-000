require_relative './course.rb'

require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
  end #get_page
  
  
  def get_courses
    self.get_page.css(".post")
  end #get_courses
  
  
  def make_courses
    self.get_courses.each do |post|
      course = Course.new
      course.title = post.css("h2").text
      course.schedule = post.css(".date").text
      course.description = post.css("p").text
    end # do |course|
  end #make_courses
  
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end # if course exists
    end # do |course|
  end #print_courses
  
end # class Scraper

Scraper.new.print_courses