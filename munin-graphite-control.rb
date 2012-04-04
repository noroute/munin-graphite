#!/usr/bin/env ruby
#
# munin-graphite-control.rb
# 
# Daemonization of munin-graphite.rb
#
# Author:: Florian Thiel <f.thiel@tarent.de>
# Copyright:: Copyright (c) 2012 tarent solutions GmbH
# License:: GNU General Public License version 2 or later
# 
# This program and entire repository is free software; you can
# redistribute it and/or modify it under the terms of the GNU 
# General Public License as published by the Free Software 
# Foundation; either version 2 of the License, or any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#

require 'rubygems'
require 'daemons'

options = {
  :dir_mode => :normal,
  :dir => '/var/run/munin-graphite',
}

Daemons.run('munin-graphite.rb', options)
