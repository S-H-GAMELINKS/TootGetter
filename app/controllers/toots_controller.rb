class TootsController < ApplicationController
    before_action :set_topic
    protect_from_forgery :except => [:create] # TODO CSRF対策をオフにしているだけなので対応策を考える

    def create
        comment = @topic.toots.create! toots_params
        redirect_to @topic
    end

    private
        def set_topic
            @topic = Topic.find(params[:topic_id])
        end

        def toots_params
            params.required(:toot).permit(:content)
        end
end