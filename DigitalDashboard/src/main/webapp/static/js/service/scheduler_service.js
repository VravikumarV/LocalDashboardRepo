'use strict';

angular.module('myApp').factory('SchedulerService', ['$http', '$q', function($http, $q){

    var REST_SERVICE_URI = 'http://localhost:9090/DigitalDashboard/schList/';

    var factory = {
    		fetchSchList: fetchSchList,
    };

    return factory;

    function fetchSchList() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching Users');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
}]);
