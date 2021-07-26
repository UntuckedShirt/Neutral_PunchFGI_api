class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :creator
  def creator
    {creatorId: self.object.creator.id, 
     creatorName: self.object.creator.name
    }
  end 
end

