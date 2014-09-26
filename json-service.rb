require 'json'

txt = File.read('input.json')
p JSON.parse(txt)