{if isset($type) && $type == 'music' && isset($music) && $music}
    {foreach from=$music item=item}
        <tr data-id="{if isset($item.raw_id) && $item.raw_id}{$item.raw_id}{else}{$item.id}{/if}" class="admin_music_item">
            <td>
                <div>{$item.id}</div>
                <div>
                    <label class="checkbox">
                        <input type="checkbox" name="id[]" value="{$item.id}" />
                    </label>
                    <i class="icon-edit"></i>
                    <i class="icon-trash"></i>
                </div>
            </td>
            <td>
                <a href="{$item.link}">{$item.link}</a>
            </td>
            <td>{$item.iname}</td>
            <td>{$item.idesc|truncate:80}</td>
            <td>{$item.position}</td>
            <td>{$item.add_date|date_format:'%e/%m/%Y %H:%M:%S'}</td>
            <td>{$item.is_deleted}</td>
        </tr>
    {/foreach}
{/if}

{if isset($type) && $type == 'video' && isset($video) && $video}
    {foreach from=$music item=item}
        <tr data-id="{if isset($item.raw_id) && $item.raw_id}{$item.raw_id}{else}{$item.id}{/if}" class="admin_music_item">
            <td>
                <div>{$item.id}</div>
                <div>
                    <label class="checkbox">
                        <input type="checkbox" name="id[]" value="{$item.id}" />
                    </label>
                    <i class="icon-edit"></i>
                    <i class="icon-trash"></i>
                </div>
            </td>
            <td>
                <a href="{$item.link}">{$item.link}</a>
            </td>
            <td>{$item.iname}</td>
            <td>{$item.idesc|truncate:80}</td>
            <td>{$item.position}</td>
            <td>{$item.add_date|date_format:'%e/%m/%Y %H:%M:%S'}</td>
            <td>{$item.is_deleted}</td>
        </tr>
    {/foreach}
{/if}