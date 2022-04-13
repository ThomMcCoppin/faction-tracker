# Preview all emails at http://localhost:3000/rails/mailers/factions_mailer
class FactionMailerPreview < ActionMailer::Preview

  def new_faction_path
    faction = Faction.last
    FactionMailer.faction_export(faction)
  end
end
