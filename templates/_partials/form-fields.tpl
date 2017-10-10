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
{if $field.type == 'hidden'}

  {block name='form_field_item_hidden'}
    <input type="hidden" name="{$field.name}" value="{$field.value}">
  {/block}

{else}

  <div class="form-group row {if !empty($field.errors)}has-error{/if}">
    <label class="col-md-3 form-control-label{if $field.required} required{/if}">
      {if $field.type !== 'checkbox'}
        {$field.label} {if $field.required}<span class="required_field">*</span>{/if}
      {/if}
    </label>
    <div class="col-md-9{if ($field.type === 'radio-buttons')} form-control-valign{/if}">

      {if $field.type === 'select'}

        {block name='form_field_item_select'}
          <select class="form-control form-control-select" name="{$field.name}" {if $field.required}required{/if}>
            <option value disabled selected>{l s='-- please choose --' d='Shop.Forms.Labels'}</option>
            {foreach from=$field.availableValues item="label" key="value"}
              <option value="{$value}" {if $value eq $field.value} selected {/if}>{$label}</option>
            {/foreach}
          </select>
        {/block}

      {elseif $field.type === 'countrySelect'}

        {block name='form_field_item_country'}
          <select
          class="form-control form-control-select js-country"
          name="{$field.name}"
          {if $field.required}required{/if}
          >
            <option value disabled selected>{l s='-- please choose --' d='Shop.Forms.Labels'}</option>
            {foreach from=$field.availableValues item="label" key="value"}
              <option value="{$value}" {if $value eq $field.value} selected {/if}>{$label}</option>
            {/foreach}
          </select>
        {/block}

      {elseif $field.type === 'radio-buttons'}

        {block name='form_field_item_radio'}
          {foreach from=$field.availableValues item="label" key="value"}
            <label class="radio-inline">
              <span class="custom-radio">
                <input
                  name="{$field.name}"
                  type="radio"
                  value="{$value}"
                  {if $field.required}required oninvalid="this.setCustomValidity('{l s='Veuillez renseigner la civilité.' d='Shop.Forms.Errors' }')"
    oninput="setCustomValidity('')" x-moz-errormessage="{l s='Veuillez renseigner la civilité.' d='Shop.Forms.Errors' }" {/if}
                  {if $value eq $field.value} checked {/if}
                >
                <span></span>
              </span>
              {$label}
            </label>
          {/foreach}
        {/block}

      {elseif $field.type === 'checkbox'}

        {block name='form_field_item_checkbox'}
          <span class="custom-checkbox">
            <input name="{$field.name}" type="checkbox" value="1" {if $field.value}checked="checked"{/if} {if $field.required}required{/if}>
            <span><i class="material-icons checkbox-checked">&#xE5CA;</i></span>
            <label>{$field.label nofilter}</label >
          </span>
        {/block}

      {elseif $field.type === 'date'}

        {block name='form_field_item_date'}
          <input class="form-control" type="date" value="{$field.value}" placeholder="{if isset($field.availableValues.placeholder)}{$field.availableValues.placeholder}{/if}">
          {if isset($field.availableValues.comment)}
            <span class="form-control-comment">
              {$field.availableValues.comment}
            </span>
          {/if}
        {/block}

      {elseif $field.type === 'birthday'}

        {block name='form_field_item_birthday'}
          <div class="js-parent-focus">
            {html_select_date
            field_order=DMY
            time={$field.value}
            field_array={$field.name}
            prefix=false
            reverse_years=true
            field_separator='<br>'
            day_extra='class="form-control form-control-select"'
            month_extra='class="form-control form-control-select"'
            year_extra='class="form-control form-control-select"'
            day_empty={l s='-- day --' d='Shop.Forms.Labels'}
            month_empty={l s='-- month --' d='Shop.Forms.Labels'}
            year_empty={l s='-- year --' d='Shop.Forms.Labels'}
            start_year={'Y'|date}-100 end_year={'Y'|date}
            }
          </div>
        {/block}

      {elseif $field.type === 'password'}

        {block name='form_field_item_password'}
          <div class="input-group js-parent-focus">
            <input
              class="form-control js-child-focus js-visible-password"
              name="{$field.name}"
              type="password"
              value=""
              pattern=".{literal}{{/literal}5,{literal}}{/literal}"
              {if $field.required}required oninvalid="this.setCustomValidity('{l s='Veuillez renseigner un mot de passe.' d='Shop.Forms.Errors' }')"
    oninput="setCustomValidity('')" x-moz-errormessage="{l s='Veuillez renseigner un mot de passe.' d='Shop.Forms.Errors' }"{/if}
            >
            <span class="input-group-btn">
              <button
                class="btn"
                type="button"
                data-action="show-password"
                data-text-show="{l s='Show' d='Shop.Theme.Actions'}"
                data-text-hide="{l s='Hide' d='Shop.Theme.Actions'}"
              >
                {l s='Show' d='Shop.Theme.Actions'}
              </button>
            </span>
          </div>
        {/block}

      {else}
              {* {$field.name|var_dump} *}
              
            {if $field.name=="firstname"}

                {if $language.language_code=="fr"}
                   {assign var="error_message" value="Veuillez renseigner le prénom."}
                {elseif  $language.language_code=="en-us"}
                    {assign var="error_message" value="Please fill in the first name."}
                {/if}

            {elseif  $field.name=="lastname"}

              {if $language.language_code=="fr"}
                   {assign var="error_message" value="Veuillez renseigner le nom."}
                {elseif  $language.language_code=="en-us"}
                    {assign var="error_message" value="Please fill in the name."}
                {/if}

            {elseif $field.name=="email"}
              
              {if $language.language_code=="fr"}
                   {assign var="error_message" value="Veuillez renseigner une adresse email."}
                {elseif  $language.language_code=="en-us"}
                    {assign var="error_message" value="Please fill in an email address."}
                {/if}

            {elseif $field.name=="address1"}
              
              {if $language.language_code=="fr"}
                   {assign var="error_message" value="Veuillez renseigner une adresse."}
                {elseif  $language.language_code=="en-us"}
                    {assign var="error_message" value="Please fill in an address."}
                {/if}

            {elseif $field.name=="postcode"}
              
              {if $language.language_code=="fr"}
                   {assign var="error_message" value="Veuillez renseigner un code postal."}
                {elseif  $language.language_code=="en-us"}
                    {assign var="error_message" value="Please enter a postal code."}
                {/if}

            {elseif $field.name=="city"}
              
              {if $language.language_code=="fr"}
                   {assign var="error_message" value="Veuillez renseigner une ville."}
                {elseif  $language.language_code=="en-us"}
                    {assign var="error_message" value="Please enter a city."}
                {/if}

            {else}
              {assign var="error_message" value=""}
            {/if}
        {block name='form_field_item_other'}
          <input
            class="form-control"
            name="{$field.name}"
            type="{$field.type}"
            value="{$field.value}"
            {if isset($field.availableValues.placeholder)}placeholder="{$field.availableValues.placeholder}"{/if}
            {if $field.maxLength}maxlength="{$field.maxLength}"{/if}
            {if $field.required}required oninvalid="this.setCustomValidity('{l s=$error_message d='Shop.Forms.Errors' }')"
    oninput="setCustomValidity('')" data-errormessage-value-missing="{l s=$error_message d='Shop.Forms.Errors' }" x-moz-errormessage="{l s=$error_message d='Shop.Forms.Errors' }" {/if}
          >
          {if isset($field.availableValues.comment)}
            <span class="form-control-comment">
              {$field.availableValues.comment}
            </span>
          {/if}
        {/block}

      {/if}

      {block name='form_field_errors'}
        {include file='_partials/form-errors.tpl' errors=$field.errors}
      {/block}

    </div>

    {* 
    <div class="col-md-3 form-control-comment">
      {block name='form_field_comment'}
        {if (!$field.required && !in_array($field.type, ['radio-buttons', 'checkbox']))}
         {l s='Optional' d='Shop.Forms.Labels'}
        {/if}
      {/block}
    </div> 
    *}

  </div>

{/if}
