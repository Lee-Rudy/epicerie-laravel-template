<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LoginModel;

class LoginController extends Controller
{

    public function login(Request $request)
    {
        $email = $request->input('email');
        $motDePasse = $request->input('motDePasse');

        $loginModel = new LoginModel();

        $user = $loginModel->login($email, $motDePasse);

        // Vérifier si l'utilisateur existe
        if ($user) {
            // Rediriger vers la page de test avec l'email de l'utilisateur
            return redirect('/pageLogin')->with('email', $user->email);
        } else {
            // Rediriger vers la page de connexion avec un message d'erreur
            return redirect('/login')->with('error', 'Email ou mot de passe incorrect.');
        }
    }

}
