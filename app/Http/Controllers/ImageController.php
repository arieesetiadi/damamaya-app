<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;


class ImageController extends Controller
{
    public static function store($image, $path)
    {
        // Buat nama baru untuk file gambar
        $captureName = strtolower(
            time() . '_' . $image->getClientOriginalName()
        );

        $captureObject = Image::make($image);

        // Resize gambar jika diatas  1MB
        if ($captureObject->filesize() > 1000000) {
            $captureObject->resize(1080, 1080, function ($constraint) {
                $constraint->aspectRatio();
            });
        }

        // Save gambar ke path tujuan
        $captureObject->save(
            $path .  $captureName
        );

        return $captureName;
    }
}
