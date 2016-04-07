module ApplicationHelper
	def full_title(front_title='')
		behind_title="Ruby on Rails Tutorial Sample App"
		if front_title.empty?
			behind_title
		else
			front_title+ " | " +behind_title
		end
	end
end
