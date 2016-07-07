import './menuitem.tag'

<sidedrawer>
    <!--suppress HtmlUnknownAttribute -->
    <div class="{mui--no-user-select:true, drawerOpen:isDrawerOpen, dark-primary-color:true}">
        <ul class="menu">
            <menuitem title="Dashboard"></menuitem>
            <menuitem title="Account" items="{menu.accountsMenu}"></menuitem>
            <menuitem title="Sites" items="{menu.sitesMenu}"></menuitem>
        </ul>
    </div>

    <style scoped>

        div.mui--no-user-select {
            position: fixed;
            top: 0;
            bottom: 0;
            width: 200px;
            left: -200px;
            overflow: auto;
            z-index: 2;
            transition: transform 0.3s ease-in-out;
        }

        ul.menu{
            padding-top: 64px;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        :scope > ul {
            padding: 0;
        }

        :scope > ul > li:first-child {
            padding-top: 15px;
        }

        strong {
            display: block;
            padding: 15px 22px;
            cursor: pointer;
        }

        strong:hover {
            background-color: #E0E0E0;
        }

        strong + ul > li {
            padding: 6px 0px;
            text-align: center;
        }

        .drawerOpen {
            transform: translate(200px);
        }

    </style>

    <script>


        this.menu = {
            accountsMenu :[
                {href:'#', text:"Profile"},
                {href:'#', text:"Security"}
            ],
            sitesMenu : [
                {href:'#', text:"Overview"},
                {href:'#', text:"New Site"},
            ]
        };


        this.isDrawerOpen = false;

        this.onStoreUpdated = (state) => {
            this.isDrawerOpen = state.drawerIsOpen;
            this.update();
        };


        this.on('before-mount', () => {
            this.subscription = NanoFlux.getFusionStore().subscribe(this, this.onStoreUpdated);
        });

        this.on('unmount', () => {
            this.subscription.unsubscribe();
        });
    </script>

</sidedrawer>