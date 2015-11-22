
# Okay, let me walk you through the intention of this challenge.
# It is suppose to let you hit the bump and 'eureka' all the main watchouts. You spotted one. That's why the Rakefile wasn't pack with automation tool.

# A migration file has 3 things to watch out:
# Timestamp -- YYYYMMDDHHMMSS
# action and names with only underscore as space - E.g: create_students
# Class name should be the same as action and name. See.

# Only then, a proper migration file works.
# Okay, let's go ahead and create a teacher migration file first. Manually.

# Try form the file name:
# here or as in a .rb file? :) Here. To test you out first.

# 20151121101515_create_teachers.rb
# class CreateTeachers < ActiveRecord::Migration
#  good.

# like that? How about future migrations? do we do them manually as well?
# No. Once you know how the grasp, automation will be introduced to you. Sometimes these tools break stuff and manual effort is needed to repair them. That's this tutorial purpose. 
# =.= Also, for the teacher.rb, do we need to create it manually? in rails, it is generated. 
# -- in rails, it is generated through automation tool.

# If we're to manually create, do we just do the Teacher class or do we follow this on the left?
# -- manually creating migration file also means manually creating the model file. Also, you don't need to follow that in fact. =)
# ok. Let's continue with the tutorial.

# Go ahead and create your teacher migration file.
# Like that? also, why does it require config? Do we include those too?
# Okay, for your understanding, database and ruby are 2 different softwares. 

# If you read the config file, you'll get some weird line saying they establish connection in order to work closely... getting something?
# ah, so we don't need that i guess?
# What do you think? without the connection, will ruby able to talk to sqlite3 software to create the table?
# =.= understood

Pay attention to one more thing: the model naming. Each model is singular, against the table name which is prural. This is because each data is a model and a table is a list of data, get the idea?
indeed. Got that dy. So the student.rb, for example sake we can view for the next question. Like that?

Yeap, but next time: type please. Only through typing, you learn. cmd + c and cmd + v is only after you are experienced. ;-)

Once the model file is inherited from ActiveRecord::Base, activerecord will do the rest, like finding the table for you and so on.

ok. yea. will type then :) appreciate the tips. 

No problem. The student model example is now completed. You can try with Teacher and other tables (this exercise got a number of tables, you'll need to use onivas to design them).

Last thing: the seed file. Seed file is file that helps create data. You can run them the ordinary ruby way. However, remember to require_relative the necessary file for it to work.

Your rakefile is not pack with db:seed so I think you should use the 'ruby seeds.rb' way.

But can i modify the students_importer.rb file to import the CSV file instead? and create a teachers.csv as well? :D

Yes you can. In this case, students_importer is the seed file.

A seed file is just an ordinary file that helps you populate your database. That's all.
ok, last question. For the DRY it up sub-question, do we need to change teacher.rb into one with a parent class and inheritance or we're to do this separately? 
A proper practice is what I've shown you. It's very DRY. lol.
nahh, you want to separate it. Sometimes, too dry (like the one there) doesn't really worth the effort. 

DRY vs separation of concern always contradicting one another. Use wisely.
ok. got it. and those stuff i see on terminal --> that's an error with my ruby installation?

Yeap. Mac uses Rbenv, not rvm. RVM is more suited for Linux. For now, live it with it first until it brings problem. I think a restart should work.

This OS el Capitan? yep

My installation script is not tested against it yet but you can refer to it if needed.

This is an automation script suited for Mac Yosmite. You can either execute manually or download it for automated. I have not tested on El Capitan so use with caution.

ok. Thanks so much Holloway! :) appreciate your help. 

A thousand miles begins with the first step bro... and plenty for falldowns and slipped. =)
Ok. Stay positive. I need to go off now to answer a call. Good luck with the assignment. 
Thanks! Will do!



