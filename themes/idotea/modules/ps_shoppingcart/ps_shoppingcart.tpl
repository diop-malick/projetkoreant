<div id="_desktop_cart" class="col-md-1 hidden-sm-down">
  <div class="blockcart cart-preview {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
    <div class="header">
      {if $cart.products_count > 0}
        <a rel="nofollow" href="{$cart_url}">
      {/if}
        <span class="cart-products-count">{$cart.products_count}</span>
        <img src="{$urls.img_url}/cart.png"/>
      {if $cart.products_count > 0}
        </a>
      {/if}
    </div>
  </div>
</div>
