require 'test_helper'

class FactionMailerTest < ActionMailer::TestCase
  def faction_export
    factions = Faction.all
    FactionMailer.faction_export(factions)
  end
end
