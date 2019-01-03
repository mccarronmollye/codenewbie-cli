class Codenewbie::Episode
  attr_accessor :title, :guest


  def initialize(title:, description:)
    @title = title
    @description = discription
  end

  def self.all #So I can have a list of all the podcast episodes
    @@all ||= self.scrape_episodes.collect do |episode_hash|
      self.new(episode_hash)
    end
  end


  def self.scrape_episodes
    Nokogiri::HTML(open('https://www.codenewbie.org/podcast?'))
    doc.css("podcasts-episode-header").collect do |espisode|
      {
        title: movie.css('episode--info--title').text, #h3
        guest: movie.css('episode--info--meta-data--guestname').text #span
      }
    end
  end 


end