'use strict';

angular.module('myApp').controller('SchedulerController', ['$scope', 'SchedulerService', function($scope, SchedulerService) {
    var self = this;
    self.schModel={jobName:'',pathInfo:''};
    self.schList=[];

    fetchSchList();

    function fetchSchList(){
    	SchedulerService.fetchSchList()
            .then(
            function(d) {
                self.schList = d;
            },
            function(errResponse){
                console.error('Error while fetching Users');
            }
        );
    }

}]);
