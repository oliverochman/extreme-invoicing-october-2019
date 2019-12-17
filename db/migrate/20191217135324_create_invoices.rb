class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.date :date
      t.date :due_date
      t.float :subtotal
      t.float :tax
      t.float :total
      t.boolean :paid_for
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
