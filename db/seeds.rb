# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# posts
Post.create(title: "post one",
            content: "Fixie mixtape viral lumbersexual tumblr squid authentic green juice tacos 8-bit bespoke aesthetic truffaut. Selfies ramps roof party, godard tbh chia pok pok air",
            image_url: "https://images.pexels.com/photos/129105/pexels-photo-129105.jpeg?h=350&auto=compress&cs=tinysrgb")

Post.create(title: "post two",
            content: "plant asymmetrical squid single-origin coffee tote bag ennui migas XOXO. Tumeric tattooed microdosing, raw denim la croix enamel pin glossier disrupt",
            image_url: "https://images.pexels.com/photos/127723/pexels-photo-127723.jpeg?h=350&auto=compress&cs=tinysrgb")

Post.create(title: "post numero tres",
            content: "kogi live-edge meh dreamcatcher. Shabby chic schlitz bushwick keffiyeh 8-bit hashtag banjo sartorial man braid fixie. Bitters snackwave selfies, fanny pack",
            image_url: "https://images.pexels.com/photos/129612/pexels-photo-129612.jpeg?h=350&auto=compress&cs=tinysrgb")

Post.create(title: "four times a charm",
            content: "master cleanse raclette tumeric asymmetrical. Shaman vinyl chia yuccie green juice mlkshk beard art party skateboard poke single-origin coffee selfies",
            image_url: "https://images.pexels.com/photos/116876/pexels-photo-116876.jpeg?h=350&auto=compress&cs=tinysrgb")

Post.create(title: "wow fifth post",
            content: "distillery. Occupy freegan chia meh messenger bag kitsch, copper mug master cleanse put a bird on it adaptogen neutra meggings. Locavore pug food truck",
            image_url: "https://images.pexels.com/photos/126790/pexels-photo-126790.jpeg?h=350&auto=compress&cs=tinysrgb")

Post.create(title: "hey this is cool",
            content: "shoreditch. Meggings chartreuse williamsburg swag salvia unicorn, bespoke fashion axe kickstarter mixtape succulents readymade. Vegan gochujang 8-bit",
            image_url: "https://images.pexels.com/photos/117831/pexels-photo-117831.jpeg?h=350&auto=compress&cs=tinysrgb")

Post.create(title: "i am also cool",
            content: "shabby chic glossier franzen cred direct trade artisan fashion axe heirloom scenester. Tumblr quinoa mlkshk la croix XOXO wayfarers retro twee lyft fixie",
            image_url: "https://images.pexels.com/photos/116651/pexels-photo-116651.png?h=350&auto=compress&cs=tinysrgb")


# projects
Project.create(title: "this is a dope project",
               percent_complete: 25,
               content: "Succulents distillery quinoa swag cardigan, VHS affogato 3 wolf moon tote bag kinfolk jianbing. Tofu woke lo-fi normcore asymmetrical. Church-key hoodie
                shaman, selfies paleo pug franzen tote bag before they sold out. Pop-up authentic tofu cred",
               card_image_url: "https://images.pexels.com/photos/134074/pexels-photo-134074.jpeg?h=350&auto=compress&cs=tinysrgb")

Project.create(title: "this is also a pretty decent project",
               percent_complete: 80,
               content: "Bespoke 90's sartorial, umami PBR&B leggings brunch quinoa chillwave. Beard roof party schlitz ramps. Lumbersexual humblebrag narwhal keffiyeh, raclette lyft four
                loko before they sold out unicorn brooklyn hoodie plaid single-origin coffee lomo semiotics.",
               card_image_url: "https://images.pexels.com/photos/132646/pexels-photo-132646.jpeg?h=350&auto=compress&cs=tinysrgb")

Project.create(title: "this is a less cool project",
                percent_complete: 55,
                content: " Listicle hashtag fashion axe palo santo four loko hammock copper mug. Hot chicken unicorn man braid pinterest, try-hard tumeric pop-up prism yuccie
                 butcher mlkshk taiyaki man bun you probably haven't heard of them.",
                card_image_url: "https://images.pexels.com/photos/33537/cat-animal-cat-portrait-mackerel.jpg?h=350&auto=compress&cs=tinysrgb")
