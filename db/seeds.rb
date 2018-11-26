# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
    Topic.create!(
        title: "Topic: #{topic + 1}"
        )
end
puts "3 topics created"
10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body: "Lorem ipsum dolor amet godard direct trade kombucha seitan pour-over church-key gluten-free kinfolk gentrify food truck DIY hot chicken slow-carb neutra cold-pressed. Coloring book enamel pin asymmetrical, celiac gastropub cliche man bun plaid thundercats brunch tacos vaporware. Etsy chillwave asymmetrical DIY occupy vaporware. Street art pabst ramps pitchfork, banh mi sriracha listicle poutine drinking vinegar raclette artisan twee.",
    topic_id: Topic.last.id
    )
end 
puts "10 blog created"

5.times do |skill|
  Skill.create!(
    title: "Ruby on Rails #{skill}",
    percent_utilized: 15
    )
end
puts "5 skill created"

8.times do |portfolio_items|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_items}",
    subtitle: "Ruby on Rails",
    body: "Disrupt keytar everyday carry, raclette semiotics deep v fashion axe. Cray helvetica keffiyeh trust fund, banh mi four loko lomo beard cardigan roof party. Swag distillery man braid, hammock enamel pin hexagon fanny pack selfies taxidermy edison bulb wayfarers. Asymmetrical palo santo iceland, glossier chambray locavore leggings kickstarter tilde fingerstache fam. Post-ironic quinoa pinterest, shabby chic mlkshk hoodie cornhole snackwave raclette tumeric ",
    thumb_image: "https://via.placeholder.com/350x200",
    main_image: "https://via.placeholder.com/600x400",
    )
end
1.times do |portfolio_items|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_items}",
    subtitle: "Angular",
    body: "Disrupt keytar everyday carry, raclette semiotics deep v fashion axe. Cray helvetica keffiyeh trust fund, banh mi four loko lomo beard cardigan roof party. Swag distillery man braid, hammock enamel pin hexagon fanny pack selfies taxidermy edison bulb wayfarers. Asymmetrical palo santo iceland, glossier chambray locavore leggings kickstarter tilde fingerstache fam. Post-ironic quinoa pinterest, shabby chic mlkshk hoodie cornhole snackwave raclette tumeric ",
    thumb_image: "https://via.placeholder.com/350x200",
    main_image: "https://via.placeholder.com/600x400",
    )
end

puts "9 portfolio_items created"






