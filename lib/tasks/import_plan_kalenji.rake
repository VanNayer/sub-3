namespace :import_plan do
  task :kalenji => :environment do |_, args|
    response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
    html_doc = Nokogiri::HTML(response.body)
  end
end
