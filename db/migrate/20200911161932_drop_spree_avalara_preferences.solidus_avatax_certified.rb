# frozen_string_literal: true
# This migration comes from solidus_avatax_certified (originally 20170509201056)

class DropSpreeAvalaraPreferences < SolidusSupport::Migration[4.2]
  def change
    drop_table :spree_avalara_preferences
    p '****** Remember to reenter your avatax preferences! ******'
  end
end
