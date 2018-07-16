namespace :topic do
    task :genarate => :environment do
        99.times do
            Topic.create!(:title => "test", :about => "test", :user_id => 1)
        end
    end

    task :destroy_all => :environment do
        Topic.destroy_all
    end
end
