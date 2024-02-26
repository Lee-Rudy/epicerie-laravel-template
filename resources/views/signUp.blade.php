<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{asset('assets/css/signUp.css')}}">
    <title>SignIn</title>
</head>
<body>
    <form action="#" method="post">
        <div class="container">
            <div class="champ_saisie">
                <h3>Sign Up</h3>

                <label for="nom">nom</label>
                <input type="text" placeholder="Email" id="nom" name="nom" required>

                <label for="email">e-mail</label>
                <input type="text" placeholder="Email" id="email" name="email" required>

                <label for="mdp">mot de passe</label>
                <input type="password" placeholder="mot de passe" id="mdp" name="mdp" required>
                <input type="checkbox" onclick="voir_mot_de_passe()"><span>démasquer le mot de passe</span>
                <br><br>


                <label for="dtn">date ne naissance</label>
                <input type="date" placeholder="" id="dtn" name="dtn" required>

                <input type="submit" class="btn-login" value="S'inscrire">
                <a href="{{url('/')}}">revenir à l'acceuil</a>
                <span></span>
                <span><a href="{{url('/login')}}">j'ai un compte</a></span>
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