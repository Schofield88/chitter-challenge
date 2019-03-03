require 'pg'

class Peeper

  attr_reader :text

  def initialize(text:)
    @text = text
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    peeps = connection.exec("SELECT * FROM peeps")
    peeps.map { |item| Peeper.new(text: item['peep_text']) }
  end

end
