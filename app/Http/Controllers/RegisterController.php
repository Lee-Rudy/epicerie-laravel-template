<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\RegisterModel;

class RegisterController extends Controller
{
    //sign Up client
    public function register(Request $request)
    {

        // request.getParameter
        $nomClient = $request->input('nomClient');
        $email = $request->input('email');
        $motDePasse = $request->input('motDePasse');

        // Insertion des données dans la base de données
        //méthode direct fa mila miantso model

        // DB::table('Client')->insert([
        //     'nomClient' => $nomClient,
        //     'mot de passe' => $motDePasse,
        // ]);

        // RegisterModel::insertClient($nomClient, $email, $motDePasse);

        $registerModel = new RegisterModel();

        $registerModel->insertClient($nomClient, $email, $motDePasse);
        //redirect page
        return redirect('/pageTest')->with('success', 'Inscription réussie. Vous pouvez maintenant vous connecter.');
    }
}
