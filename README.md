##### Connecting with push server behind route with a self signed certificate can prove troublesome. This is a small guide on how to overcome this problem.

Extract the ROOT certificate from the UPS route on Openshift using the following command:
 
```
echo | openssl s_client -connect YOUR_SECURE_ROUTE:443 2>/dev/null |openssl x509 -text | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > cert.crt
```

To add this to a physical iOS device it is best to create a gist containing the details of the cert and preserve the file extension.

To add this to the iOS device, browse to the gist on mobile device and click to view on desktop site, then go to raw.
When you do this, you should be given the option to install the cert on the physical device. Follow through the steps until the cert shows as verified.

Once this is installed you need to trust it:

Settings > General > About > Certificate Trust Settings. Under "Enable full trust for root certificates," turn on trust for the certificate. 

This should now be trusted. For emulators just drag and drop the cert onto the device and follow the same steps.
