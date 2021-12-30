
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="title" content="project">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="language" content="English">
  <meta name="author" content="mouli">
  
  <title> Home </title>
  <!-- BOOTSTRAP FILES -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- MY CSS -->
  <link rel="stylesheet" type="text/css" href= "css/styles.css"/>
</head>

<body class="home">
    <div class="nav">
      <ul class="nav-item-left">
          <li>
            <a class="nav-link" href="/">
              <img class="img" src="{% static 'logo.png' %}" width="70px" height="40px"/>
            </a>
          </li>
          <li><a class="nav-link" href="/">Home</a></li>
          <li><a class="nav-link " href="{% url 'menu' %}">Menu</a></li>
          <li><a class="nav-link" href="{% url 'hotels' %}">Hotels</a></li>
      </ul>
      <ul class="nav-item-right">
            <!-- {% if user.is_authenticated %} -->
            <li><a class="nav-link" href="{% url "logout" %}"><span class="glyphicon glyphicon-log-out"></span> &nbsp; Logout</a></li>
            <li><a class="nav-link" href="{% url 'cart' %}">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
              </svg> &nbsp;Cart
            </a></li>
            <!-- {% else %} -->
            <li><a class="nav-link" href="{% url "register" %}"><span class="glyphicon glyphicon-user"></span> &nbsp; Sign up</a></li>
            &nbsp;&nbsp;&nbsp;
            <li><a class="nav-link" href="{% url "login" %}"><span class="glyphicon glyphicon-log-in"></span> &nbsp; Log in</a></li>
            <!-- {% endif %} -->
      </ul>
  </div>
  <span>${msg}</span>
  <br/>
  <br>
  <br>
    <div class="main col-md-8 col-md-offset-2">
    <form method="POST" action="/register" class="form-content" modelAttribute="newuser">
        <h3 class="form-header">Login</h3>
        <div class="form-group">
        <div class="form-group-content">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter name" required>
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
            <label for="mobile">Mobile</label>
            <input type="number" class="form-control" id="mobile" name="mobile" placeholder="Enter mobile" required>
            <label for="username">Username</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter username" required>
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
            <input type="submit" class="btn btn-primary">Login</button>
        </div>
        </div>
        <div class="last">
        <p> Don't Have a Account ?<a href="{% url "register" %}" style="text-decoration: none; color: #E83A59; padding:3%; cursor:pointer;">Register</a></p>
        <button class="button" type="submit"><span class="glyphicon glyphicon-check"></span> &nbsp; Continue</button>
        </div>
    </form>
 </div>



</body>

</html>