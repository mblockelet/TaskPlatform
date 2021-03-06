app.directive('showSample', ['$rootScope', function ($rootScope) {
   return {
      scope: true,
      restrict: 'EA',
      template: '<div ng-repeat="sample in samples track by sample.ID">Entrée:<pre>{{sample.sInput}}</pre>Sortie:<pre>{{sample.sOutput}}</pre></div>',
      link: function(scope, elem, attrs) {
         function init() {
            var filter = {sGroupType: 'Example', idTask: $rootScope.idTask};
            if (attrs.showSample && attrs.showSample != 'all') {
               filter.sName = attrs.showSample;  
            }
            scope.samples = _.sortBy(_.filter(ModelsManager.getRecords('tm_tasks_tests'), filter), 'iRank');
         }

         init();

         scope.$on('newTask', init);
      }
   };
}]);