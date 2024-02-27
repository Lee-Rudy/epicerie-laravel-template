<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LoginModel extends Model
{
    //use HasFactory;

    protected $table = 'client';
    
    public function login($email, $motDePasse)
    {
        // Rechercher un utilisateur avec l'email donné et le mot de passe
        return self::where('email', $email)
                   ->where('mot_de_passe', $motDePasse)
                   ->first();
    }

    // function login($email, $motDePasse)
    // {
    //     return self::where('email', $email)
    //                ->where('mot_de_passe', $motDePasse)
    //                ->get();
    // }
}
