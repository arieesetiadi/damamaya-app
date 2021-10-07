<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
            [
                'username' => 'admin',
                'name' => 'Arie Setiadi',
                'email' => 'admin@gmail.com',
                'gender' => 'l',
                'role_id' => 1,
                'password' => Hash::make('admin')
            ],
            [
                'username' => 'petugas',
                'name' => 'Andriani Suryani',
                'email' => 'petugas@gmail.com',
                'gender' => 'p',
                'role_id' => 2,
                'password' => Hash::make('petugas')
            ],
            [
                'username' => 'bidang',
                'name' => 'Ardi Suyasa',
                'email' => 'bidang@gmail.com',
                'gender' => 'l',
                'role_id' => 3,
                'password' => Hash::make('bidang')
            ]
        ];

        DB::table('users')->truncate();

        foreach ($users as $user) {
            User::create($user);
        }
    }
}
