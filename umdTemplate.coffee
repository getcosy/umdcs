"use stict"

do (
  root = this,
  factory = (dep1, dep2) ->
    myModule = {}

    # Your module code goes here
    # e.g. myModule.fn1 = () ->

    myModule
) ->
  if "object" is typeof exports
    dep1 = require 'dep1'
    dep2 = require 'dep2'
    module.exports = factory dep1, dep2
  else if define?.amd
    define ['dep1', 'dep2'], factory
  else
    root.myModule = factory root.dep1, root.dep2
  return
