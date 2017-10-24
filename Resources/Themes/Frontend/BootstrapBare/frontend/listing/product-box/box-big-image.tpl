{extends file="frontend/listing/product-box/box-basic.tpl"}
{namespace name="frontend/listing/box_article"}

{block name='frontend_listing_box_article_description'}{/block}

{block name='frontend_listing_box_article_picture'}
    <a href="{$sArticle.linkDetails}"
       title="{$productName|escape}"
       class="product-image">
        {block name='frontend_listing_box_article_image_element'}
            <div class="image-wrapper" data-equal="image">
                {block name='frontend_listing_box_article_image_media'}
                    {$desc = $productName|escape}
                    {if isset($sArticle.image.thumbnails)}
                        {if $sArticle.image.description}
                            {$desc = $sArticle.image.description|escape}
                        {/if}
                        {block name='frontend_listing_box_article_image_picture_element'}
                            <img srcset="{$sArticle.image.thumbnails[1].sourceSet}"
                                 alt="{$desc}"
                                 title="{$desc|truncate:160:""}"
                                 class="img-responsive img-center" />
                        {/block}
                    {else}
                        <img src="{link file='frontend/_public/src/img/no-picture.png'}"
                             alt="{$desc}"
                             title="{$desc|truncate:160:""}"
                             class="img-responsive img-center" />
                    {/if}
                {/block}
            </div>
        {/block}
    </a>
{/block}