# -*- mode: ruby; coding: utf-8 -*-
#
# Copyright (C) 2011-2012  Kouhei Sutou <kou@cozmixng.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

require "sinatra/base"
require "haml"

module RabbiRack
  class Application < Sinatra::Base
    attr_accessor :rabbit

    set :app_file, File.join(File.dirname(__FILE__), "config.ru")

    layout

    before do
      content_type("text/html", "charset" => "UTF-8")
    end

    get "/" do
      haml :index
    end

    get "/pages/next" do
      @rabbit.move_to_next_if_can
      haml :index
    end

    get "/pages/previous" do
      @rabbit.move_to_previous_if_can
      haml :index
    end

    get "/pages/:number" do |number|
      @rabbit.move_to_if_can(number.to_i)
      haml :index
    end

    def title
      "Rabbit"
    end

    def slide_title
      @rabbit.slide_title
    end
  end
end
