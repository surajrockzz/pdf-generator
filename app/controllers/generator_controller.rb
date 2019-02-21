
require 'shrimp'

class GeneratorController < ApplicationController
  skip_before_action :verify_authenticity_token
  def generate
    url = 'http://www.youtube.com'
    ReportWorker.perform_async("21-02-2019","22-02-2019",url)
    render text:"url send to the worker"
  end
end
