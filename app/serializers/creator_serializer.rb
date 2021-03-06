class CreatorSerializer < ApplicationSerializer
  attributes :id, :games
  def games
    self.object.games.map do |game|
      {title: game.title, 
       publisher: game.publisher,
       publishDate: game.publish_date,
      playerCount: game.player_count
      }
    end #end do 
  end  #end def
end #end class