<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style>
.container {
	margin-top: 150px;
	border-radius: 30px;
}
</style>
</head>
<body class="bg-dark">
	<div class='container '>
		<form
			class='col col-lg-5 col-sm-5 col-md-5 card mx-auto p-5 bg-black shadow-lg mt-5'
			action="userRegister" method='post'>
			<h1 class="text-black fw-bolder mb-4 text-center">Register</h1>
			<div class="mb-3">
				<label for="name" class="form-label">Name</label> <input type="text"
					class="form-control" name="name" placeholder="Enter your name"
					id="name">
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email</label> <input
					type="text" class="form-control" name="email"
					placeholder="Enter your email" id="email">
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password</label> <input
					type="text" class="form-control" name="password"
					placeholder="Enter your password" id="password">
			</div>
			<div class="mb-3">
				<label for="gender" class="form-label">Gender</label> <input
					type="radio" class="form-control" name="gender" value="Male" id="gender">Male
				<input type="radio" class="form-control" name="gender" value="Female" id="gender">Female
				<input type="radio" class="form-control" name="gender" value="Other" id="gender">Others
			</div>

			<div class="mb-3">
				<label for="city" class="form-label">City</label>
				 <select name="city">
					<option>Select city</option>
					<option>Delhi</option>
					<option>Mumbai</option>
					<option>Varanasi</option>
					<option>Balia</option>

				</select>

			</div>
			<div class="signup-link mb-3">
				Already have an account<a href="login.jsp"> Login</a>
			</div>

			<button type="submit" class="btn btn-success mb-2">Register</button>

		</form>
	</div>
</body>
</html>