require 'uri'
require 'net/http'

def upload_image_slack(file_path)
  url = URI('https://slack.com/api/files.upload')
  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true
  
  request = Net::HTTP::Post.new(url)
  request['Authorization'] = 'Bearer *************'
  form_data = [['file', File.open(file_path)], %w[channels *******]]
  
  request.set_form form_data, 'multipart/form-data'
  response = https.request(request)
  puts response.read_body
end
inputted_strings = ARGV 
upload_image_slack "/Users/"Userame"/Desktop/Screenshot/output#{inputted_strings.first}.txt"
upload_image_slack "/Users/"Userame"/Desktop/Screenshot/#{inputted_strings.first}.png"

