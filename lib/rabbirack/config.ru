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

require "drb/drb"

require "rabbirack/application"

environment = ENV["RACK_ENV"] || "development"
case environment
when "development"
  use Rack::ShowExceptions
end

use Rack::Runtime
use Rack::ContentLength

use Rack::Deflater
use Rack::ConditionalGet

use Rack::Lint
use Rack::Head

rabbit = DRbObject.new_with_uri(ENV["RABBIT_URI"])
application = RabbiRack::Application.new do |app|
  app.rabbit = rabbit
end
run application
