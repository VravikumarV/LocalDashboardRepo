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
  </head>
  <body ng-app="myApp" class="ng-cloak">
      <div class="generic-container" ng-controller="SchedulerController as ctrl">
<div layout="column">
	<div flex>  
		<table style="margin: 0px auto;" align="left">
			<tr>
				<td>
					<div>
						<b>Person Data:</b> <select id="schedulerData" ng-change="getList()">
							<option value="">-- Select Persons --</option>
							<option ng-repeat="s in ctrl.schList" value="{{s.jobName}}">{{s.pathInfo}}</option>
						</select><br>
					</div>
				</td>
			</tr>
		</table>
	</div>
<!--
          <div flex class="panel panel-default">
              <div class="panel-heading"><span class="lead">List</span></div>
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                              <th>Name</th>
                              <th>Path</th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="s in ctrl.schList">
                              <td><span ng-bind="s.jobName"></span></td>
                              <td><span ng-bind="s.pathInfo"></span></td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
		  -->
		  </div>
      </div>
      
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/scheduler_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/scheduler_controller.js' />"></script>
  </body>
</html>