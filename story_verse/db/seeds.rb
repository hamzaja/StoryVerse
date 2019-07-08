Story.destroy_all
Chapter.destroy_all

stories = ["Story1", "Story2","Story3","Story4","Story5"]
chapters = ["Chapter1", "Chapter2","Chapter3","Chapter4","Chapter5"]

stories.each do |story|
  Story.create(name: story, description: description)
end

chapters.each do |chapter|
  Chapter.create(name: chapter, description: description)
end


book1 = Book.create(story_id: 1, chapter_id: 2)
book2 = Book.create(story_id: 2, chapter_id: 2)
book3 = Book.create(story_id: 3, chapter_id: 3)
book4 = Book.create(story_id: 4, chapter_id: 3)
book5 = Book.create(story_id: 4, chapter_id: 4)
