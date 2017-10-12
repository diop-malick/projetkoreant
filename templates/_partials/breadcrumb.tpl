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
{if $urls.pages.stores === $urls.current_url}
  {$breadcrumb.links[] = ['title' => {l s='Our stores' d='Shop.Theme'}, 'url' => $urls.pages.stores]}
{/if}
{if {url entity='best-sales'} === {$urls.current_url|replace:"http:":""} || {url entity='best-sales'} === {$urls.current_url|replace:"https:":""}}
  {$breadcrumb.links[] = ['title' => {l s='Best Sellers' d='Shop.Theme.Catalog'}, 'url' => {url entity='best-sales'}]}
{/if}
{if count($breadcrumb.links) > 2}
  {$breadcrumb.links = array_slice($breadcrumb.links,1)}
{/if}
<nav data-depth="{$breadcrumb.links|count}" class="breadcrumb text-md-right">
  <div class="container no-gutter">
    <ol itemscope itemtype="http://schema.org/BreadcrumbList">      
      {foreach from=$breadcrumb.links item=path name=breadcrumb}
        {block name='breadcrumb_item'}
          <li itemprop="itemListElement" class="hidden-sm-down" itemscope itemtype="http://schema.org/ListItem">
          {if $path.url !== $urls.current_url}
            <a itemprop="item" href="{$path.url}">
          {/if}
              <span itemprop="name">{$path.title}</span>
          {if $path.url !== $urls.current_url}
            </a>
          {/if}
            <meta itemprop="position" content="{$smarty.foreach.breadcrumb.iteration}">
          </li>
          
        {/block}
      {/foreach}
      {if !$path}
        {assign var=path value=$breadcrumb.links[0]}
      {/if}
      <li itemprop="itemListElement" class="hidden-md-up" itemscope itemtype="http://schema.org/ListItem">
        <a itemprop="item" href="javascript:void(0)" onclick="history.back()">
          <h1 itemprop="name"><i class="material-icons">&#xE5CB;</i> {$path.title} {if isset($listing.pagination.total_items)}({$listing.pagination.total_items}){/if}</h1>
        </a>
      </li>
    </ol>
  </div>
</nav>
