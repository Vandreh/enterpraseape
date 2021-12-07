class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.datetime :data
      t.string :company
      t.decimal :tax
      t.string :salesperson

      t.timestamps
    end
  end
end
