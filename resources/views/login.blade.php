<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/login.css">
    <title>login</title>
</head>
<body>
    <form action="/loginController" method="post">
      @csrf
        <div class="container">
            <div class="champ_saisie">
                <h3>Login</h3>

                <label for="email">e-mail</label>
                <input type="text" placeholder="Email" id="email" name="email" required>

                <label for="mdp">mot de passe</label>
                <input type="password" placeholder="mot de passe" id="mdp" name="motDePasse" required>
                <input type="checkbox" onclick="voir_mot_de_passe()"><span></span>démasquer le mot de passe
                <br><br>

                <input type="submit" class="btn-login" value="Se connecter">
                <a href="{{url('/')}}">Revenir à l'accueil</a>
                <span></span>
                <span><a href="{{url('/signUp')}}">Pas encore de compte</a></span>

            </div>
        </div>
    </form>
</body>

<script>
    function voir_mot_de_passe() {
  var x = document.getElementById("mdp");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>

</html>