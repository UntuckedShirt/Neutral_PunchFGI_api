class GameSerializer < ApplicationSerializer
  attributes :creator_id, :title, :publisher, :publish_date, :player_count, :creator, :id
  def creator
    
    {creator_id: self.object.creator.id, 
     creator_name: self.object.creator.name
    }
  end 
end

