# frozen_string_literal: true
# This migration comes from solidus_avatax_certified (originally 20160624155217)

class AddColumnsToSpreeUsers < SolidusSupport::Migration[4.2]
  def change
    add_column :spree_users, :exemption_number, :string
    add_reference :spree_users, :avalara_entity_use_code, index: true
  end
end
