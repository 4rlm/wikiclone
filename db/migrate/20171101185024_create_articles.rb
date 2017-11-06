class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |k|
  		k.string :title, { null: false }
  		k.string :body, { null: false }
  		k.string :summary, { null: false }
  		k.integer :user_id, { null: false }
      k.string :status, { default: "pending" }

  		k.timestamps
    end
  end
end
