# TenantCloud API operations
TenantCloud does not provide a good way to manage files. The scripts in this repository can help you list and delete file from TenantCloud.com

Get the Bearer token from any web request and set the value in `.envrc` file.  

To delete a file, run the `delete-file.sh` script passing the file token as the argument to the script. You can get the file token from the files URL.  