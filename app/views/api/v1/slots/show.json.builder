json.slot do
 
    json.extract! @slot, :id, :name, :text
    json.short_text @story.text.truncate(60, separator: '', ommission: ' ...')
  
  jason.comments do
    json.comments @story.comments do |comment|
      json.extract! comment, :id, :content, :name
      json.date comment.created_at.strftime("%m/%d/%y")
    end
  end
end