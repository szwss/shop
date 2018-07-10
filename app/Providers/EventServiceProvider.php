<?php

namespace App\Providers;

use Illuminate\Support\Facades\Event;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;

use App\Listeners\RegisteredListener;
use Illuminate\Auth\Events\Registered;

use App\Events\OrderPaid;
use App\Listeners\UpdateProductSoldCount;

use App\Listeners\SendOrderPaidMail;

use App\Events\OrderReviewd;
use App\Listeners\UpdateProductRating;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        'App\Events\Event' => [
            'App\Listeners\EventListener',
        ],
        Registered::class => [
            RegisteredListener::class,
        ],

        OrderPaid::class => [
            UpdateProductSoldCount::class,//关联事件和监听器---订单支付增加销量
            SendOrderPaidMail::class,//关联事件和监听器---订单支付发送邮件
        ],

        OrderReviewd::class => [
            UpdateProductRating::class,//更新产品评分
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();

        //
    }
}
