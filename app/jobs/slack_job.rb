class SlackJob < ApplicationJob
  def initialize
    client = Slack::Web::Client.new
    @emoji_list = client.emoji_list[:emoji]
  end

  def perform
    @emoji_list.each do |key, value|
      emoji = build_emoji(key, value)

      return unless emoji

      imported_emoji = Emoji.new(emoji)

      if imported_emoji.save
        puts "Emoji #{key} imported"
      else 
        puts "Couldn't import the emoji"
      end
    end
  end

  private

  def build_emoji(name, image_url) 
    if image_url.include? "alias:"
      name_reference = image_url.sub("alias:", "")
      { name: name, image_url: @emoji_list[name_reference] } if @emoji_list[name_reference]
    else 
      { name: name, image_url: image_url }
    end
  end
end
