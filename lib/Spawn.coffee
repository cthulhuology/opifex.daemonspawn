# Spawn.coffee
#
#	© 2013 Dave Goehrig <dave@dloh.org>
#

spawn = (require 'child_process').spawn

Spawn = () ->
	self = this
	this["*"] = (module, url) ->			# this is a catchall method
		proc = spawn("opifex",[ url,module ])
		proc.stdout.on 'data', (data) ->
			console.log "#{module} stdout: #{data.toString()}"
		proc.stderr.on 'data', (data) ->
			console.log "#{module} stderr: #{data.toString()}"
		proc.on 'close', (code) ->
			console.log "#{module} exited: #{code}"

module.exports = Spawn
