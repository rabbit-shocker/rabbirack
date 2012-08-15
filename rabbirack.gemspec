# -*- ruby -*-
#
# Copyright (C) 2012 Kouhei Sutou <kou@cozmixng.org>
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
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

base_dir = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(base_dir, "lib"))

require "rabbirack/version"

Gem::Specification.new do |spec|
  spec.name = "rabbirack"
  spec.version = Rabbirack::VERSION.dup
  spec.rubyforge_project = "rabbit"
  spec.homepage = "http://rabbit-shockers.org/en/rabbirack/"
  spec.authors = ["Kouhei Sutou"]
  spec.email = ["kou@cozmixng.org"]
  spec.summary = "Rabbirack is a Web interface for Rabbit"
  spec.description =
    "Rabbirack provides Web interface for Rabbit. " +
    "You can control your slide from your browser such as your smartphone. " +
    "It means that you can talk in front of audience " +
    "instead of in front of your computer."
  spec.license = "GPLv2+"

  spec.files = ["Rakefile", "COPYING", "GPL", "README"]
  spec.files += ["Gemfile", "#{spec.name}.gemspec"]
  spec.files += Dir.glob("{lib,po}/**/*")
  Dir.chdir("bin") do
    spec.executables = Dir.glob("*")
  end

  spec.add_runtime_dependency("rabbit")
  spec.add_runtime_dependency("sinatra")
  spec.add_runtime_dependency("haml")

  spec.add_development_dependency("rake")
  spec.add_development_dependency("bundler")
end
