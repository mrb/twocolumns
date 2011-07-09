class AddFieldsToPapers < ActiveRecord::Migration
  def self.up
    add_column :papers, :authors, :string
  end

  def self.down
    remove_column :papers, :authors
  end
end
