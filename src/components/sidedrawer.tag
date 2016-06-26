import './menuitem.tag'

<sidedrawer>
    <!--suppress HtmlUnknownAttribute -->
    <div class="{mui--no-user-select:true, drawerOpen:isDrawerOpen, dark-primary-color:true}">
        <ul class="menu">
            <menuitem title="Test" items="{testItems}"></menuitem>
            <menuitem title="Test 2" items="{testItems2}"></menuitem>
            <li onClick="{toggleSubmenu}">
                <strong>Category 1</strong>
                <ul class="{submenu:true,open:isSubmenuOpen}">
                    <li><a href="#">Item 1</a></li>
                    <li><a href="#">Item 2</a></li>
                    <li><a href="#">Item 3</a></li>
                </ul>
            </li>
            <li>
                <strong>Category 2</strong>
                <ul class="submenu">
                    <li><a href="#">Item 1</a></li>
                    <li><a href="#">Item 2</a></li>
                    <li><a href="#">Item 3</a></li>
                </ul>
            </li>
            <li>
                <strong>Category 3</strong>
                <ul class="submenu">
                    <li><a href="#">Item 1</a></li>
                    <li><a href="#">Item 2</a></li>
                    <li><a href="#">Item 3</a></li>
                </ul>
            </li>
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

        this.testItems = [
            {href:'#', text:"MenuItem 1"},
            {href:'#', text:"MenuItem 2"}

        ]
        this.testItems2 = [
            {href:'#', text:"MenuItem 1"},
            {href:'#', text:"MenuItem 2"},
            {href:'#', text:"MenuItem 1"},
            {href:'#', text:"MenuItem 2"},
            {href:'#', text:"MenuItem 1"},
            {href:'#', text:"MenuItem 2"},
            {href:'#', text:"MenuItem 1"},
            {href:'#', text:"MenuItem 2"},
            {href:'#', text:"MenuItem 1"},
            {href:'#', text:"MenuItem 2"},
            {href:'#', text:"MenuItem 1"},
            {href:'#', text:"MenuItem 2"}
        ]

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