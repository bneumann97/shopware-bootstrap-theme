{block name="frontend_index_minimal_footer"}
    <footer class="footer-minimal hidden-print">
        <div class="container">

            {* Service menu *}
            {block name="frontend_index_minimal_footer_menu"}
                <div class="footer-service-menu text-center">
                    <ul class="list-unstyled list-inline">
                        {include file="widgets/index/menu.tpl" sGroup=gLeft}
                    </ul>
                </div>
            {/block}

            {* Vat info *}
            {if !$hideCopyrightNotice}
                {block name='frontend_index_minimal_footer_vat_info'}
                    <div class="footer-vat-info">
                        <p class="text-center">
                            <small>
                                {if $sOutputNet}
                                    {s name='FooterInfoExcludeVat' namespace="frontend/index/footer"}{/s}
                                {else}
                                    {s name='FooterInfoIncludeVat' namespace="frontend/index/footer"}{/s}
                                {/if}
                            </small>
                        </p>
                    </div>
                {/block}
            {/if}
        </div>
    </footer>    
{/block}
