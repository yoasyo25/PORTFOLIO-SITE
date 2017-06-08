class DropTechonologies < ActiveRecord::Migration[5.0]
  def change
    drop_table :techonologies
  end
end
