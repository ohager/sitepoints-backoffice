import './menu.tag'
import './sidedrawer.tag'
import './custom-header.tag'
import './custom-footer.tag'
import './custom-content.tag'

<basepage>
    <sidedrawer/>
    <div class="drawable">
        <custom-header/>

        <custom-content>
            <yield/>
        </custom-content>
        <custom-footer/>
    </div>


</basepage>

