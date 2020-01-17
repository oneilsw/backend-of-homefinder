class NoteSerializer < ActiveModel::Serializer
  attributes :id, :text, :sender, :receiver, :note_time

  def note_time
    self.object.created_at.strftime("%m/%d/%y at %l:%M %p")
  end

end
