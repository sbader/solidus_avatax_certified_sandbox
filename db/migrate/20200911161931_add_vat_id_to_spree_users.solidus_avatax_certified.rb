# frozen_string_literal: true
# This migration comes from solidus_avatax_certified (originally 20160805193512)

class AddVatIdToSpreeUsers < SolidusSupport::Migration[4.2]
  def change
    add_column :spree_users, :vat_id, :string
  end
end
