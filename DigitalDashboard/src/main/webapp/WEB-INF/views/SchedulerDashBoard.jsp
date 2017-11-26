<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>  
    <title>AngularJS $http Example</title>  
    <style>
      .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }

    </style>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
<script type="text/javascript">

    var app = angular.module('myApp', []);
    app.controller('SchDashboardController', function($scope, $http) {
    	
    	$scope.getSchedulerList = function() {
				alert("in getSchedulerList");
    		    $http({method: 'GET', url: 'http://localhost:9090/Spring4MVCAngularJSExample/schList/'}).
		        success(function(data, status, headers, config) {
		        	$scope.schList = data;	        	
		        }).
		        error(function(data, status, headers, config) {
		          // called asynchronously if an error occurs
		          // or server returns response with an error status.
		        });		    
		    };		   
	  });
  	
  </script>
  </head>
	<body data-ng-controller="SchDashboardController  as ctrl">
		<h3>Spring MVC AngularJS JSON Drop Down sample</h3>
	
		<table style="margin: 0px auto;" align="left">
			<tr>
				<td>
					<div data-ng-init="getSchedulerList()">
						<b>Person Data:</b> <select id=schModel>
							<option value="">-- Select Persons --</option>
							<option data-ng-repeat="schModel in ctrl.schList" value="{{schModel.jobName}}">{{schModel.pathInfo}}</option>
						</select><br>
					</div>
				</td>
			</tr>
		</table>
	      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
	
	</body>
</html>