{namespace name="frontend/index/menu_footer"}

{block name="frontend_index_menu_footer"}
    {* Footer menu *}
    <div class="row">
        {block name="frontend_index_menu_footer_inner"}
            {block name="frontend_index_footer_column_service_hotline"}
                {block name="frontend_index_menu_footer_service_line"}
                    <div class="col-xs-12 col-sm-6">
                        {block name="frontend_index_menu_footer_service_line_inner"}
                            {block name="frontend_index_footer_column_service_hotline_headline"}
                                <p class="lead">{s name="sFooterServiceHotlineHead"}Service Hotline{/s}</p>
                            {/block}
                            {block name="frontend_index_footer_column_service_hotline_content"}
                                <p>{s name="sFooterServiceHotline"}Telefonische Unterst&uuml;tzung und Beratung unter:<br/><br/><strong>0180 - 000000</strong><br/>Mo-Fr, 09:00 - 17:00 Uhr{/s}</p>
                            {/block}
                        {/block}
                    </div>
                {/block}
            {/block}
            {block name="frontend_index_footer_column_service_menu"}
                {block name="frontend_index_menu_footer_shop_service"}
                    <div class="col-xs-12 col-sm-6">
                        {block name="frontend_index_menu_footer_shop_service_inner"}
                            {block name="frontend_index_footer_column_service_menu_headline"}
                                <p class="lead">{s name="sFooterShopNavi1"}Shop Service{/s}</p>
                            {/block}
                            {block name="frontend_index_footer_column_service_menu_content"}
                                <ul class="list-unstyled">
                                    {block name="frontend_index_footer_column_service_menu_before"}{/block}
                                    {foreach $sMenu.bottom as $item}

                                        {block name="frontend_index_footer_column_service_menu_entry"}
                                            <li class="navigation--entry" role="menuitem">
                                                <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                                    {$item.description}
                                                </a>

                                                {* Sub categories *}
                                                {if $item.childrenCount > 0}
                                                    <ul class="navigation--list is--level1" role="menu">
                                                        {foreach $item.subPages as $subItem}
                                                            <li class="navigation--entry" role="menuitem">
                                                                <a class="navigation--link" href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}" title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                                    {$subItem.description}
                                                                </a>
                                                            </li>
                                                        {/foreach}
                                                    </ul>
                                                {/if}
                                            </li>
                                        {/block}
                                    {/foreach}

                                    {block name="frontend_index_footer_column_service_menu_after"}{/block}
                                </ul>
                            {/block}
                        {/block}
                    </div>
                {/block}
            {/block}
            {block name="frontend_index_footer_column_information_menu"}
            {/block}
            {block name="frontend_index_footer_column_newsletter"}
            {/block}
        {/block}
    </div>
{/block}