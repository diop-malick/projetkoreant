<div id="_desktop_user_info" class="col-md-7 hidden-sm-down no-gutter">
  <div class="user-info">
    {if $logged}
      <div class="currency-selector dropdown js-dropdown hidden-sm-down">
        <span class="expand-more" data-toggle="dropdown">{$customerName|truncate:8:'…'}<i class="material-icons expand-more">&#xE5C5;</i></span>       
        <ul class="dropdown-menu" aria-labelledby="dLabel">
          <li>
            <a title="{l s='Your account' d='Shop.Theme.Customeraccount'}" rel="nofollow" href="{$my_account_url}" class="dropdown-item">
              {l s='Your account' d='Shop.Theme.Customeraccount'}
            </a>
          </li>
          <li>
            <a title="{l s='Sign out' d='Shop.Theme.Actions'}" rel="nofollow" href="{$logout_url}" class="dropdown-item">
              {l s='Sign out' d='Shop.Theme.Actions'}
            </a>
          </li>
        </ul>
      </div>
      <a title="{l s='Your account' d='Shop.Theme.Customeraccount'}" rel="nofollow" href="{$my_account_url}" class="hidden-md-up">
        <i class="material-icons">&#xE7FF;</i>
      </a>
    {else}
      <a
        href="{$my_account_url}"
        title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
        rel="nofollow"
      >
        <i class="material-icons hidden-md-up">&#xE7FF;</i>
        <span class="hidden-sm-down">{l s='Sign in' d='Shop.Theme.Actions'}</span>
      </a>
    {/if}
  </div>
</div>
