require 'cuba'
require "cuba/haml"

Cuba.plugin Cuba::Haml
Cuba.settings[:haml][:layout_path] = "views/layouts"

Cuba.define do
  on '' do
    haml 'index'
  end
end
