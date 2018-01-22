<?php

namespace App\Models;
use Fenos\Notifynder\Traits\Notifable;
use Illuminate\Foundation\Auth\User as AuthUser;

class User extends AuthUser
{
    use Notifable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function setPasswordAttribute($value)
    {
        $this->attributes['password'] = bcrypt($value);
    }


}
