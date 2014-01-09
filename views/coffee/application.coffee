window.PheasantController = ($scope)->
  $scope.clickCount = 0
  $scope.item = 'Hello'
  $scope.cities = [
    {name: '岡山市'}
    {name: '玉野市'}
    {name: '総社市'}
  ]
  $scope.hello = ->
    alert("押された")
  $scope.alertCity = (index)->
    alert($scope.cities[index].name)
    $scope.clickCount++
  $scope.$watch("clickCount", ->
    console.log("clickCount=#{$scope.clickCount}")
  , true)