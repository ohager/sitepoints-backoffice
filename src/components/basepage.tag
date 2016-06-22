import './sidedrawer.tag'
import './custom-header.tag'
import './custom-footer.tag'
import './custom-content.tag'

<basepage>
    <sidedrawer></sidedrawer>
    <div class="drawable">
        <custom-header></custom-header>

        <custom-content>
            <yield></yield>
        </custom-content>
        <custom-footer></custom-footer>
    </div>


</basepage>

