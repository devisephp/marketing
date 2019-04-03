<?php
namespace Permissions;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class Roles extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $allPerms = [
            'access admin',
            'manage pages',
            'manage slices',
            'manage users',
            'manage mothership',
            'manage settings',
            'manage meta',
            'manage sites',
            'manage languages',
            'manage redirects',
        ];

        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');
        DB::table('roles')->truncate();
        DB::table('permissions')->truncate();
        DB::table('role_has_permissions')->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');

        foreach ($allPerms as $perm)
        {
            Permission::create(['name' => $perm]);
        }

        $role = Role::create(['name' => 'Developer']);
        $role->givePermissionTo($allPerms);

        $role = Role::create(['name' => 'Administrator']);
        $role->givePermissionTo($allPerms);

        $role = Role::create(['name' => 'Editor']);
        $role->givePermissionTo([
            'access admin',
            'manage slices',
        ]);
    }
}