class FactionMailer < ApplicationMailer
  default from: 'example@gmail.com'

  layout "mailer"

  def faction_export(factions, player)
    @factions = factions
    @player = player
    mail(to: "#{@player.email}", subject: 'Factions for the Campaign')
  end
end
