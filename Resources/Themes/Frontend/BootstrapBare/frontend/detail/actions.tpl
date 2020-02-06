<ul class="list-unstyled">
    {block name='frontend_detail_actions_review'}
        {if !{config name=VoteDisable} && ($sArticle.sVoteAverange.count > 0)}
            <li>
                <a href="#tabcomments" class="showtabcomments" rel="nofollow" title="{s name='DetailLinkReview' namespace='frontend/detail/actions'}Bewertung schreiben{/s}">
                    <i class="fa fa-star mrs"></i>
                    {s name="DetailLinkReview"}{/s}
                </a>
            </li>
        {/if}
    {/block}

    {block name='frontend_detail_actions_contact'}
    {/block}

    {block name='frontend_detail_actions_notepad'}
    {/block}

    {block name='frontend_detail_actions_voucher'}
    {/block}

    {block name='frontend_detail_actions_compare'}
    {/block}
</ul>
