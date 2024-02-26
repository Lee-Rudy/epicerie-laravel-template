<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RegisterModel extends Model
{
    //use HasFactory;
    //insertion dans la table client
    
    //php artisan make::model RegisterModel
    //php artisan make::controller RegisterController

    protected $table = 'Client';//nom de la table

    public static function insertClient($nomClient, $email, $motDePasse)
    {
        return self::insert([
            'nomClient' => $nomClient,
            'email' => $email,
            'mot_de_passe' => bcrypt($motDePasse),
        ]);
    }
}
