<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = [
            [
                'name' => 'Admin'
            ],
            [
                'name' => 'Petugas'
            ],
            [
                'name' => 'Bidang'
            ]
        ];

        DB::table('roles')->truncate();

        foreach ($roles as $role) {
            DB::table('roles')->insert($role);
        }
    }
}
