<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Civil Services API Configuration
    |--------------------------------------------------------------------------
    |
    | Configuration for Civil Services API
    |
    */

    'api_base' => env('CIVIL_SERVICES_API_BASE', 'https://api.civil.services'),
    'api_version' => env('CIVIL_SERVICES_API_VERSION', 'v1'),
    'api_key' => env('CIVIL_SERVICES_API_KEY', 'YOUR_API_KEY'),
    'cache_expire' => env('CIVIL_SERVICES_CACHE_EXPIRE', 3600)
];
