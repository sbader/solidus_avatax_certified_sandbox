# frozen_string_literal: true
# This migration comes from solidus_avatax_certified (originally 20160624154423)

class CreateSpreeAvalaraEntityUseCodes < SolidusSupport::Migration[4.2]
  def change
    create_table :spree_avalara_entity_use_codes do |t|
      t.string :use_code
      t.string :use_code_description
      t.timestamps null: false
    end
  end
end
