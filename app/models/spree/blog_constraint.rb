module Spree
  class BlogConstraint
    def self.matches?(request)
      words = ['blog', 'clanki']
      #Rails.loggger.info = request.path_parameters[:blog_id]
      words.include?(request.path_parameters[:blog_id])
    end

    #def self.matches?(request)
      
      #return true if request.fullpath =~ /(^\/+(clanki|blog)+)/ #/(^\/+(admin|racun|kosarica|narocilo|content|login|prijava|pg\/|orders|products|izdelki|oddelki|simptom|proizvajalci|s\/|session|signup|shipments|states|t\/|tax_categories|user)+)/
      #!Blog.find_by_permalink(request.fullpath.split("/").second).nil?
    #end
  end
end