class CreateFilmes < ActiveRecord::Migration[6.1]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.string :diretor
      t.date :data_lancamento
      t.string :sinopse
      t.float :rating

      t.timestamps
    end
  end
end
