var btn = document.getElementById("btn");
btn.addEventListener('click', function(e) {
	e.preventDefault()
	var body = "Email: " +document.getElementById("email").value+"<br> Name: " +document.getElementById("name").value+"<br> Message: " +document.getElementById("message").value
	var sub = document.getElementById("subject").value;
	Email.send({
		SecureToken :"8bf700f6-5a7e-40b4-bfb5-33a58333fd43",
		To: 'ducpd82@gmail.com',
		From: 'ducpd82@gmail.com',
		Subject: sub,
		Body: body
	}).then(
		message => {
			if (message=="OK"){
				swal("Successfull","Your Data Successfull Received","success");
			}
			else{
				swal("Something Wrong","Your Data is not Received","error")
			}
		}
	);
})
