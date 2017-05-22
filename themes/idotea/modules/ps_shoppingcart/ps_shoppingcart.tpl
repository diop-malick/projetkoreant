<div id="_desktop_cart" class="col-md-2 hidden-sm-down">
  <div class="blockcart cart-preview {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
    <div class="header">
      {if $cart.products_count > 0}
        <a rel="nofollow" href="{$cart_url}">
      {/if}
        <span class="cart-products-count">{$cart.products_count}</span>
        <div class="cart-icon"></div>
      {if $cart.products_count > 0}
        </a>
      {/if}
    </div>
  </div>
</div>
