{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div class="container">
  <div class="row" style="text-align:center">
      <div class="col col-sm-3">
          <img src="{$urls.img_url}/pin.png" alt="{l s='Sale points' d='Shop.Theme'}" style="border:1px solid;border-radius:50%;margin-bottom:1em"/>
          <p>{l s='Sale points' d='Shop.Theme'}</p>
      </div>
      <div class="col col-sm-3">
         <img src="{$urls.img_url}/handshake.png" alt="{l s='Sale points' d='Shop.Theme'}" style="border:1px solid;border-radius:50%;margin-bottom:1em"/>
          <p>{l s='Partners' d='Shop.Theme'}</p>
      </div>
      <div class="col col-sm-3">
         <img src="{$urls.img_url}/lock.png" alt="{l s='Sale points' d='Shop.Theme'}" style="border:1px solid;border-radius:50%;margin-bottom:1em"/>
          <p>{l s='Secured payment' d='Shop.Theme'}</p>
      </div>
      <div class="col col-sm-3">
          <img src="{$urls.img_url}/fastcar.png" alt="{l s='Sale points' d='Shop.Theme'}" style="border:1px solid;border-radius:50%;margin-bottom:1em"/>
          <p>{l s='Delivery in europe' d='Shop.Theme'}</p>
      </div>
  </div>
  <div class="row">
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
</div>
<div class="footer-container">
  <div class="container">
    <div class="row">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>
  </div>
</div>
<div class="footer-after">
  <div class="container">
    <div class="row">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}
    </div>
  </div>
</div>