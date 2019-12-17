class BclController < ApplicationController
  def index
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = Rails.application.credentials.twitter[:api_key]
      config.consumer_secret = Rails.application.credentials.twitter[:api_secret_key]
      config.access_token = Rails.application.credentials.twitter[:access_token]
      config.access_token_secret = Rails.application.credentials.twitter[:access_token_secret]
    end
    @count_toyama = client.user("T_birds")["followers_count"]
    @count_niigata = client.user("Albi_BC_PR")["followers_count"]
    @count_sinano = client.user("GrazieClub")["followers_count"]
    @count_ishikawa = client.user("I_Million_Stars")["followers_count"]
    @count_shiga = client.user("shigaunitedbc")["followers_count"]
    @count_ibaraki = client.user("ibaraki_planets")["followers_count"]
    @count_fukushima = client.user("F_REDHOPES")["followers_count"]
    @count_saitama = client.user("musashi_bears")["followers_count"]
    @count_tochigi = client.user("tochigi_gb")["followers_count"]
    @count_gunma = client.user("kyumaraima")["followers_count"]
    @count_kanagawa = client.user("k_futuredreams")["followers_count"]
    @count_fukui = client.user("Fukui_Raptors")["followers_count"]
  end
end
