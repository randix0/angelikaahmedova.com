<div class="span3">
    <div class="well sidebar-nav">
        <ul class="nav nav-list">
            <li class="nav-header">Меню</li>
            <li class="{if isset($SUBPARTITION__PAGE) && $SUBPARTITION__PAGE == 'products'}active{/if}"><a href="{$SITE_URI}admin/products/">Изделия</a></li>
            <li class="{if isset($SUBPARTITION__PAGE) && $SUBPARTITION__PAGE == 'categories'}active{/if}"><a href="{$SITE_URI}admin/categories/">Категории</a></li>
            <li class="{if isset($SUBPARTITION__PAGE) && $SUBPARTITION__PAGE == 'collections'}active{/if}"><a href="{$SITE_URI}admin/collections/">Коллекции</a></li>
            <li class="{if isset($SUBPARTITION__PAGE) && $SUBPARTITION__PAGE == 'colors'}active{/if}"><a href="{$SITE_URI}admin/colors/">Цвета</a></li>
            <li class="{if isset($SUBPARTITION__PAGE) && $SUBPARTITION__PAGE == 'details'}active{/if}"><a href="{$SITE_URI}admin/details/">Детали</a></li>
        </ul>
    </div><!--/.well -->
</div><!--/span-->