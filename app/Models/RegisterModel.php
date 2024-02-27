<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;

class RegisterModel extends Model
{
    //use HasFactory;
    //insertion dans la table client
    
    //php artisan make::model RegisterModel
    //php artisan make::controller RegisterController

    //techno : laravel : laravel est bizzare sensible à la casse par exemple comme 
    //nomClient dans la base mais dans le model c'est nomclient

    protected $table = 'client';//nom de la table

    public static function insertClient($nomClient, $email, $motDePasse)
    {
        return self::insert([
            'nomclient' => $nomClient,
            'email' => $email,
            'mot_de_passe' => $motDePasse,
            // 'mot_de_passe' => Hash::make($motDePasse), // Hacher le mot de passe avant de l'insérer
        ]);
    }
}
