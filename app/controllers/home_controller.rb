class HomeController < ApplicationController
  require 'rest-client'

  def index; end

  def ask_to_aztro
    puts "----------------------- params #{params}"
    sign = params["sign"]
    day = params["date"]

    response = Excon.post(
      "https://aztro.sameerkumar.website/?sign=#{sign}&day=#{day}"
    )
    return nil if response.status != 200
    infos = JSON.parse(response.body)
    puts "INFO: #{ infos }-------------------------------------------------------------"
    redirect_to showzinho_path({params: infos})
  end

  def show
   @infos = params 
  end
end
