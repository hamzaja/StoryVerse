# README

StoryVerse is an App that will help you to dive deeper in your dreams and start your unique journey. You will not be alone - your friends and family can help you to accomplish dangerous quests and prosper in magical world. Everything depends on your choice.

models

A Story belongs to a User.
A User can have many Stories.
A Story has many chapters though book.
A Chapter can have many Stories though book.
Joiner for chapter and story is book.

Chapter -----< Book >------ story >-------- User

Stories
1. A story has name
2. number of chapters
3. key for every chapter
4. story navigation

User
1. user has name
2. user can choose a story
3. user need to navigate though the Story

Chapter
1. Chapter have a name and a number
2. Chapter have a description
3. Chapter have a img_url 



Book(joiner)
1. Have a story_id and chapter_id
