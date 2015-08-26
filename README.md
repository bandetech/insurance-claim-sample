Name
Insurance Claim Sample Application based on Marklogic.

Overview
Insurance Claim Sample Application based on Marklogic.

## Description
This is a sample application for Marklogic.
When an insurance company receives a claim from customer, create a claim based on customer's insurance policy. The created claim are used to investigate and assess the issue. This sample application assumes very simple sample of claim management application based on Marklogic.

## Requirement
Install Marklogic 8

## Install
1) Create an App Server using following,
   https://docs.marklogic.com/guide/getting-started/xquery#id_22010
2) Load policy data and sequence data into database. 
3) Copy all files (except sample-files) into application context path.

# Usage
Just access to top page of the application. You can see 3 menu.
- Create a claim
- Modify a cliam
- Search Claims

Creating a new claim, need to specify 11111111 or 22222222 or 33333333 or 44444444 for policy No. field. (these are prepared by sample-files.) Then policy information (First Name, Last name etc.) for policy no will be filled in the form.