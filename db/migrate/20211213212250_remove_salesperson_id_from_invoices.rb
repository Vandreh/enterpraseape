class RemoveSalespersonIdFromInvoices < ActiveRecord::Migration[6.1]
  def change
    remove_column :invoices, :salesperson_id, :integer
    add_column :invoices, :employee_id, :integer
  end
end
