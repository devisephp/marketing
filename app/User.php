<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use Notifiable, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function getPermissionsListAttribute()
    {
        return $this->getAllPermissions();
    }

    public function hasPermission($permission)
    {
        if($permission == 'access admin' && $this->hasRole('Editor')){
            $pagePermissionName = 'edit ' . request()->route()->getName();

            return $this->can($pagePermissionName);
        }

        return $this->can($permission);
    }
}