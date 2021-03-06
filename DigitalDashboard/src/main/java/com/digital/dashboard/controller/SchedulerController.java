package com.digital.dashboard.controller;
 
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.digital.dashboard.model.SchedulerModel;



 
@RestController
public class SchedulerController {
 
    @RequestMapping(value = "/schList/", method = RequestMethod.GET)
    public ResponseEntity<List<SchedulerModel>> listAllUsers() {
    	System.out.println(" In controller  1  ");
        List<SchedulerModel> schList = new ArrayList<SchedulerModel>();
        schList.add(new SchedulerModel("Job", "Scheudle 1"));
        schList.add(new SchedulerModel("Job", "Scheudle 2"));
        schList.add(new SchedulerModel("Job", "Scheudle 3"));
        if(schList.isEmpty()){
            return new ResponseEntity<List<SchedulerModel>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<SchedulerModel>>(schList, HttpStatus.OK);
    }
 

}