class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :user, null: false
      t.string :name, null: false
      t.string :phone
      t.string :email
      t.string :linkedin
      t.string :company
      t.string :job_title

      t.timestamps null: false
    end
  end
end
