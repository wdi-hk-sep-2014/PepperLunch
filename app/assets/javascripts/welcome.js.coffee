# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App = angular.module("myApp", [])

App.controller("PersonCtrl", ["$scope", ($scope)->
  $scope.people = []

  $scope.handleSubmit = ->
    $scope.people.push(@person)
    @person = {}
])

$ ->
  $('div.btn').click (e) ->
    e.preventDefault()
    $(@).toggleClass('btn-success btn-danger')