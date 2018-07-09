<?php

return [
    'alipay' => [
        'app_id'         => '2016091800539444',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqM4HDJ06NltfvZc3YVKgP/FPYvPPMg12aGGaSXIOvcxRZ9Uxba5+7/xFwCXmWDw7xdeY2sOg66v3nn3s+WqTSoPX3yYQO7wWaRxF/OGz9d54Ka6H0ryWxRhws+F/6gGtGUsBXAgSgwNDzhOKePFQPQuSeN2/PKB338cnPLlEhPgEMzH7LTfIidVZ8CM1XVXpqrjEZJuqhCCybM16KFpom42VPG96NtBasyIc1OawMb4t+nzZmNYkjK1qMIEMK5M3RaOpU7Vdr+mg3YkQl1uWdWH7ppAVFXe5QbikrFeWBIERLZhSDAWo7ATL1QvD3xQ7yS3khNdoyq3GVt6qmiumRwIDAQAB',
        'private_key'    => 'MIIEpAIBAAKCAQEA9JqXKkZFLjglXxJWXizlzwPx1GoKIIAOE2QCe3VkeHjV7LXUjYcrP/ezWCTx9PwORP0x/LCyiCpHKg+VdXz6hX1lzwX8yPSkO267uGokvqLWKZlsvYpx8RYrsqnFhmYVsLXK2/8TyxEs8+2c+1WjNlaRQqPnr0VxdrmSdZJcMaj/SempGdhzjTGOv1mX/d33xw8lpEgLsgOItH+1n43rjLoyXnSRO95Z3PmhGFdsjOFkQ0fMx17gsBFii31BFagjfBNsv0EtAJ4jIzQdZdfwhw/hBaXfzsGECRH3GpKiwm/GMIYJw37vnZcbbBCq26PLY0TqnftFUgUkA9Zm2Mxw4wIDAQABAoIBAGhkedN+/hOFvt1edCHpQ4MgidtADmZkgJ1h93U9Ws3XtGU8DSUB5UF9s7sQuXr3ABgNf4H635chhBG9aOollr3WENdUFNinIFiFH/TKyDfcQ06pvjD+nzZnYer0beq4MtWiIJvXt1jZUbghVvglSmzscT5huYWiO5SSCqHG/zXptsBIhL0VGwgsBV+1hdQoRhXulF8aAEHWMfArY7TYDURx+VfWvjAXNfn2/0jC4IujzzpkExtNnxTWRmJ9nUSjlWLn0OE4MY2o2z6+sghaxvK0EVT1USqI0E2Kr3Lz6kKMxiD1xRwPxbSZ13u5u6C/qq1GYzULV5UPEDM+0FgWnZECgYEA/CWj11y6M35wdjSvh7oE9pXRtrp+b6SLsT6yDWfl+SOOn4uBOnnJEjQG+86P2Y38Y98bo8zNN+MCjaMftTvQ60th7I5RSNQtvxSQltKbS8P+pCTRcWAD26Xc2gexj1D3NeH5GcubsD6Sdgo5cwiTBPrud4BNlKnF56QsDPsQHx0CgYEA+FdxW7pbASrJ1Ofr94mXDGABBdykEju4t8CDd3yKjCvH9TeE68GAu0iwg/AnvQnNH5mctLDUFfzzWBz+RO8MfN4Ip4UTq9AVvA32RuZMjqwVuOffFX0E6ak8D36X9BBL++hxwNoYyvIkZ63L8qmcRFJAcTemEb64VRVDZ9fZz/8CgYEAlF8BviSOXOa1/piaAV/ws7kNIl0zMTa+DJo746+Tn7rQnglVDbfEHbYHtfyioP3v2kTa2tQUniIyym2Gpvp/wTUmdjB4nEZedOYA/v8G6tp16NjRdclt+73p61JDpXWbQlWqYwdwoZDwVg1GKO6OtIuD70XMYQJVtizgzvKdVfECgYEAzeaqLRRwmaIhX22+3ijs3KzIjFSokBmGCIwMNEhFEvzFuBGFGncARcd52pqGSBzVPmr9W271GRn1pMu9IehVIT5yTHpwmdZX/uhQle4h8XTKOdm9w7I5HYZcLriWQhw087KAhhYN0k47Ut7tJs/rqVXM6lHqVfIcIScVEQcNJ38CgYBar0VBcbl0PN04MUcq2yQtBE0vF2Tb0ucVn8Gzimh4dmgGrbIP1UhufqROeQJtfOvQDLPaC36A1Ok1fajF/IKAhJXWiw6U5zJriqsjcjD6tc9AeIVhwbiK6WclpZhujdtKFiZzxT6FEl4VjQbmmGgHzbYy4c38h13bBjs+F22nVQ==',
        'log'            => [
            'file' => storage_path('logs/alipay.log'),
        ],
    ],

    'wechat' => [
        'app_id'      => '',
        'mch_id'      => '',
        'key'         => '',
        'cert_client' => '',
        'cert_key'    => '',
        'log'         => [
            'file' => storage_path('logs/wechat_pay.log'),
        ],
    ],
];