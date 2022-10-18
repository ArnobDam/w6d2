require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject

  # tname = self.table_name
  # arr = DBConnection.execute2(<<-SQL)
  #   SELECT
  #     *
  #   FROM
  #     "#{tname}"
  #   LIMIT
  #     0
  # SQL

  def self.columns
    # ...
  
  @columns ||= DBConnection.execute2(<<-SQL)
    SELECT
      *
    FROM
      "#{table_name}"
    LIMIT
      0
  SQL
  
  @columns.flatten.map {|str| str.to_sym}
  
  end

  def self.finalize!
  end

  def self.table_name=(table_name)
    # ...
    # class_name_str = "#{table_name}"
    # @table_name = class_name_str.downcase + "s"

    @table_name = table_name
  end

  def self.table_name
    # ...
    class_name_str = "#{self}"
    @table_name = class_name_str.downcase + "s"
  end

  

  def self.all
    # ...
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {})
    # ...
  end

  def attributes
    # ...
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
