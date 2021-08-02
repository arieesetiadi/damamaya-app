<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
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
                'name' => 'Administrator',
                'email' => 'admin@gmail.com',
                'gender' => 'l',
                'role_id' => 1,
                'password' => Hash::make('admin')
            ],
            [
                'username' => 'petugas',
                'name' => 'Petugas',
                'email' => 'petugas@gmail.com',
                'gender' => 'p',
                'role_id' => 2,
                'password' => Hash::make('petugas')
            ],
            [
                'username' => 'bidang',
                'name' => 'Bidang',
                'email' => 'bidang@gmail.com',
                'gender' => 'l',
                'role_id' => 3,
                'password' => Hash::make('bidang')
            ]
        ];

        foreach ($users as $user) {
            User::create($user);
        }
    }
}
