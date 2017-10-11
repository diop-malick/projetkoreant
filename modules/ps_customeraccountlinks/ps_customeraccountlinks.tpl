{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<div id="block_myaccount_infos" class="col-md-3 links wrapper no-gutter">
  <h3 class="myaccount-title hidden-sm-down">{l s='Your account' d='Shop.Theme.Customeraccount'}</h3>
  <div class="title clearfix hidden-md-up" data-target="#footer_account_list" data-toggle="collapse">
    <span class="h3">{l s='Your account' d='Shop.Theme.Customeraccount'}</span>
    <span class="pull-xs-right">
      <span class="navbar-toggler collapse-icons">
        <i class="material-icons add">&#xE313;</i>
        <i class="material-icons remove">&#xE316;</i>
      </span>
    </span>
  </div>
  <ul class="account-list collapse" id="footer_account_list">
    <li>
      <a href="{$urls.pages.my_account}" rel="nofollow" title="{l s='Your account' d='Shop.Theme.Customeraccount'}" rel="nofollow">
        {l s='Your account' d='Shop.Theme.Customeraccount'}
      </a>
    </li>
    <li>
      <a href="{$urls.pages.history}" title="{l s='Order history and details' d='Shop.Theme.Customeraccount'}" rel="nofollow">
        {l s='Order history and details' d='Shop.Theme.Customeraccount'}
      </a>
    </li>
    <li>
      <a href="{$urls.pages.identity}" title="{l s='Information' d='Shop.Theme.Customeraccount'}" rel="nofollow">
        {l s='Information' d='Shop.Theme.Customeraccount'}
      </a>
    </li>
	</ul>
</div>
