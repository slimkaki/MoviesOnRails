class DropReviewsTable2 < ActiveRecord::Migration[6.1]
  def up
    drop_table :reviews
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
