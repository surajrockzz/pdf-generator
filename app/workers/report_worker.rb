require 'webshot'
class ReportWorker
  include Sidekiq::Worker
  sidekiq_options retry: false


  def perform(start_date,end_date,url)
    screenshot = Webshot::Screenshot.instance
    screenshot.capture "https://www.youtube.com/", "instagram.png", width: 1024, height: 800 ,timeout: 5
    puts "sidekiq worker generating a report from #{start_date} to #{end_date}"
  end


end
