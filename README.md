<br><br>

<div align="center">

<h3>
    Google Cloud Platform + Infrastructure as Code
</h3>

<br>

<span>
<img width="150" src="https://user-images.githubusercontent.com/25181517/183911547-990692bc-8411-4878-99a0-43506cdb69cf.png" />
</span>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<span>
<img width="150" src="https://user-images.githubusercontent.com/25181517/183345121-36788a6e-5462-424a-be67-af1ebeda79a2.png" />
</span>
</div>

</div>


<br>

### This is a project to generate a Cloud SQL database in Google Cloud Platform. This works as a module made with Terraform to help all configuration.

<br>

## Requirements

- Google Cloud Platform account
- Create a project
- Create a Service Account - and get the credentials JSON

 

## Inputs

  - project_id
    - The Project Id
  - credentials
    - JSON file with credentials
  - zone
  - region
  - instance_name
    - Name of postgres instance
  - db_name
  - db_username
  - db_pass

## Outputs

  - db_info
    - public_ip_address
    - database
    - user
    - password
    - sensitive = true
