<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RegisterController extends Controller
{
    //sign Up client
    public function register(Request $request)
    {

        // request.getParameter
        $nomClient = $request->input('nomClient');
        $motDePasse = $request->input('motDePasse');

        // Insertion des données dans la base de données
        DB::table('Client')->insert([
            'nomClient' => $nomClient,
            'mot de passe' => $motDePasse,
        ]);
        
        //redirect page
        return redirect('/login')->with('success', 'Inscription réussie. Vous pouvez maintenant vous connecter.');
    }
}
