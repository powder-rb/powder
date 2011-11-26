require 'sinatra'
require 'logger'

module Powder  
  class Server < Sinatra::Base
    POW_PATH = "#{ENV['HOME']}/.pow"
  
    before do
      @pow_app = `cat app.txt`.strip
    end
    
    # Routes ------------------------------------------------------------------
    get '/restart' do
      to_url = redirect_url(params[:redirect])
      Dir.chdir(pow_dir(@pow_app)) do
        `powder restart`
        to_url ||= pow_url(@pow_app)
       end
      redirect to_url
    end
    
    # Helpers -------------------------------------------------------------------
    def pow_dir(app_name)
      POW_PATH + '/' + app_name
    end

    def pow_url(app_name)
      'http://' + app_name + '.' + domain
    end
    
    def redirect_url(to)
      "http://" + to if to
    end

    def domain
      if File.exists? File.expand_path('~/.powconfig')
        returned_domain = %x{source ~/.powconfig; echo $POW_DOMAINS}.gsub("\n", "").split(",").first
        returned_domain = %x{source ~/.powconfig; echo $POW_DOMAIN}.gsub("\n", "") if returned_domain.nil? || returned_domain.empty?
        returned_domain = 'dev' if returned_domain.nil? || returned_domain.empty?
        returned_domain
      else
        'dev'
      end
    end
  end
end
