munin-graphite integrates your [Munin](http://munin-monitoring.org/)
data sources to [Graphite](http://graphite.wikidot.com/) sinks by
querying your Munin nodes and then sending the data to Graphite.

## munin-graphite.rb

Usage:

    munin-graphite.rb MUNIN_HOST GRAPHITE_HOST

munin-graphite uses the standard ports 4949 (Munin) and 2003
(Graphite). Both host names default to 'localhost'.

## munin-graphite-control.rb
munin-grahpite-control.rb adds support for using munin-graphite as a
daemon with start/stop capabilities. It uses Ruby's
[Daemons](http://daemons.rubyforge.org/) library.

Usage:

    munin-graphite-control.rb start -- MUNIN_HOST GRAPHITE_HOST

(parameters to be passed to munin-graphite.rb are separated from
Daemons arguments by '--')

## Dependencies
* munin-graphite.rb only requires plain Ruby.
* munin-graphite-control.rb requires rubygems and [Daemons](http://daemons.rubyforge.org/).

## Versions
### 0.1
* initial versioned revision
* daemon support
