class Pokemon
  attr_reader :name, :type, :db, :id

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type) VALUE (?, ?)
    SQL

    db.execute(sql, name, type)
  end
end
