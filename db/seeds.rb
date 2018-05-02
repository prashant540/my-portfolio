10.times do |blog|
	Blog.create!(
    "title" => "My Blog post #{blog}",
    "body" => "it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, purpose (injected humour and the like)."
		)
end
puts "==================="
puts "10 blogs created"

5.times do |skill|
	Skill.create!(
		"title" => "Rails #{skill}",
    "percent_utilized" => 15
		)
end
puts "==================="
puts "5 skills created"

9.times do |portfolio_item|
	Portfolio.create!(
		"title" => "Portfolio #{portfolio_item}",
    "subtitle" => "my great service",
    "body" => "it is a long established fact that a reader will be t here, content here',  and web page editors",
    "main_image" => "http://via.placeholder.com/600x400",
    "thumb_image" => "http://via.placeholder.com/350x200"

		)
end