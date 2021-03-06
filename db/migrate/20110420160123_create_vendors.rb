class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.string :name

      t.timestamps
    end

    add_column :products, :vendor_id, :integer
    add_column :products, :product_vendor_url, :string
    add_column :products, :product_vendor_url_2, :string
    add_column :shipments, :vendor_id, :integer
  end

  def self.down
    remove_column :products, :vendor_id
    remove_column :products, :product_vendor_url, :string
    remove_column :products, :product_vendor_url_2, :string
    remove_column :shipments, :vendor_id
    drop_table :vendors
  end
end
