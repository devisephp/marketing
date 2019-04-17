<?php

return [

    /*
    |--------------------------------------------------------------------------
    | General
    |--------------------------------------------------------------------------
    |
    | General settings
    |
    */

    'mode'                      => env('DVS_MODE', 'install'),
    'cache_enabled'             => env('DVS_CACHE_ENABLED', false),

    /*
    |--------------------------------------------------------------------------
    | Domain Overwrites
    |--------------------------------------------------------------------------
    |
    | Allows the overwriting of the dvs_site domains with local or staging domains
    | The ID if the dvs_sites entry should be the key of each domain item
    |
    */
    'domain_overwrites_enabled' => env('DVS_DOMAIN_OVERWRITES_ENABLED', false),
    'domains'                   => [
        1 => env('SITE_1_DOMAIN'), // or env('SITE_X_DOMAIN'),
    ],

    /*
    |--------------------------------------------------------------------------
    | Layouts
    |--------------------------------------------------------------------------
    |
    | Array of available layouts for pages
    |
    */

    'layouts' => ['Main' => 'main'],

    /*
    |--------------------------------------------------------------------------
    | Media
    |--------------------------------------------------------------------------
    |
    | Configuration for the media manager
    | See config/filesystems.php for media.driver options
    |
    */

    'media'       => [
        'disk'                    => env('DVS_FILESYSTEM_DISK', 'public'),
        'cached-images-directory' => 'styled',
        'source-directory'        => 'media',
        'image-alts-directory'    => 'alts',
        'driver'                  => env('DVS_MEDIA_DRIVER', 'gd'), // imagick or gd
    ],

    /*
    |--------------------------------------------------------------------------
    | Mothership
    |--------------------------------------------------------------------------
    |
    | Configuration for mothership
    |
    */
    'mothership'  => [
        'url'     => env('MOTHERSHIP_URL', 'https://mothership.app/'),
        'api-key' => env('MOTHERSHIP_API_KEY', null)
    ],

    /*
    |--------------------------------------------------------------------------
    | Permissions
    |--------------------------------------------------------------------------
    |
    | Configuration for user permissions.
    | Available Permissions: ['access admin','manage pages','manage users','manage mothership',
    | 'manage settings','manage meta','manage sites','manage languages','manage redirects']
    |
    */
    'permissions' => [
        /*
        'example@email.com' => [
            'access admin',
            'manage pages',
            'manage slices',
            'manage users',
            'manage mothership',
            'manage settings',
            'manage meta',
            'manage sites',
            'manage languages',
            'manage redirects'
        ],
        */
        'default' => [
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
            'manage media',
        ]
    ]
];