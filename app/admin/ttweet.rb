ActiveAdmin.register Ttweet do

  actions :index, :show, :destroy

  menu label: "Trumped Up Tweets", priority: 1

  index do
    selectable_column
    column "Original Tweet", :tweet_body
    column "Trumped Up Tweet", :ttweet_body
    column "Created At", :created_at
    actions
  end


end
