<menu>
    <input type="checkbox" id="nav--super-vertical-responsive">
    <label for="nav--super-vertical-responsive">MENU</label>
    <aside class="nav--super-vertical g--2 g-m--3 g-s--6 g-t--12 no-margin-vertical">
        <div class="g--12 logo-area no-margin-vertical">
            Your logo here
        </div>
        <nav class="g--12 no-margin-vertical">
            <a href="">About</a>
            <div class="nav-collapsible">
                <input type="checkbox" id="nav-collapsible-1">
                <label for="nav-collapsible-1">Components</label>
                <ul class="nav-collapsible-links">
                    <li each={ navItems } onclick={parent.route}
                        class="menu__item { active : parent.currentView === this.view}">{ this.title }
                    </li>
                </ul>
            </div>
        </nav>
    </aside>

    <script>

        this.currentView = riot.routeState.view;
        this.menuOpen = true;

        this.navItems = [
            //{ title : 'Home', view : 'home'},
            //{ title : 'Demo', view : 'demo'},
            {title: 'Shop Demo', view: 'shop'},
            //{ title : 'Projects', view : 'projects' }
        ];

        this.route = (evt) => {
            riot.route(evt.item.view)
        };
    </script>
</menu>