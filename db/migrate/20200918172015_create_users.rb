class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.String :user_name
      t.String :email
      t.String :password

      t.timestamps
    end
  end
end
