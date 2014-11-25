require 'cuba'
require "cuba/haml"
require 'mail'
require_relative 'config'

Cuba.plugin Cuba::Haml
Cuba.settings[:haml][:layout_path] = "views/layouts"

Cuba.define do
  on '' do
    haml 'index'
  end

  on post do
    on "mail" do
      on param("email"), param("name"), param("message") do |email, name , message|
        mail = Mail.deliver do
          to      ["learod17@gmail.com", 'leandro@payeworks.com']
          from    "#{name} <leandro@payeworks.com>"
          subject 'Contact PayeWorks'
          reply_to   email.to_s
          body "#{message.to_s} \n from: #{email.to_s}"

        end

        res.redirect '/'
      end
    end
  end
end
