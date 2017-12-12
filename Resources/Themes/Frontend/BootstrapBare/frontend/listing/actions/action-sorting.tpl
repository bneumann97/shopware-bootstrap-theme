{namespace name="frontend/listing/listing_actions"}

{$hideSortings = $sCategoryContent.hide_sortings || $sortings|count == 0}

<div class="col-sm-5 col-md-4 mb-2 mb-sm-0">
    <form class="action-sort{if $hideSortings} d-none{/if}" method="get" data-action-form="true">

        {* Necessary to reset the page to the first one *}
        <input type="hidden" name="{$shortParameters.sPage}" value="1">

        {* Sorting field *}
        {block name='frontend_listing_actions_sort_field'}
            {$listingMode = {config name=listingMode}}

            <select name="{$shortParameters.sSort}" 
                    class="form-control" 
                    aria-label="{s name='ListingLabelSort'}{/s}"
                    data-auto-submit="true" 
                    data-class="sort-select">

                {block name='frontend_listing_actions_sort_label'}
                    <option value="" disabled="disabled">{s name='ListingLabelSort'}{/s}</option>
                {/block}

                {foreach $sortings as $sorting}
                    <option value="{$sorting->getId()}"{if $sSort eq $sorting->getId()} selected="selected"{/if}>{$sorting->getLabel()}</option>
                {/foreach}

                {block name='frontend_listing_actions_sort_values'}{/block}
            </select>
        {/block}
    </form>
</div>
