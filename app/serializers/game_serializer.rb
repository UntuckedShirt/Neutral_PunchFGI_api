class GameSerializer < ApplicationSerializer
  attributes :id, :title, :creator
  def creator
    {creator_id: self.object.creator.id, 
     creatorName: self.object.creator.name
    }
  end 
end

